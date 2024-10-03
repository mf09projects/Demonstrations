#include "main.h"
#include "app.h"
#include "test.h"

#include <gcov.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "SEGGER_RTT.h"

/* The start and end symbols are provided by the linker script.  We use the
//    array notation to avoid issues with a potential small-data area.  */

extern const struct gcov_info *const __gcov_info_start[];
extern const struct gcov_info *const __gcov_info_end[];

/* This function shall produce a reliable in order byte stream to transfer the
   gcov information from the target to the host system.  */

static void
dump (const void *d, unsigned n, void *arg)
{
  (void)arg;
  const unsigned char *c = d;
  unsigned char buf[2];

  for (unsigned i = 0; i < n; ++i)
  {
    encode (c[i], buf);
    SEGGER_RTT_printf(0, "%s", buf);
  }
}

/* The filename is serialized to a gcfn data stream by the
   __gcov_filename_to_gcfn() function.  The gcfn data is used by the
   "merge-stream" subcommand of the "gcov-tool" to figure out the filename
   associated with the gcov information. */

static void
filename (const char *f, void *arg)
{
  __gcov_filename_to_gcfn (f, dump, arg);
}

/* The __gcov_info_to_gcda() function may have to allocate memory under
   certain conditions.  Simply try it out if it is needed for your application
   or not.  */

static void *
allocate (unsigned length, void *arg)
{
  (void)arg;
  return malloc (length);
}

/* Dump the gcov information of all translation units.  */

static void
dump_gcov_info (void)
{
  const struct gcov_info *const *info = __gcov_info_start;
  const struct gcov_info *const *end = __gcov_info_end;

  /* Obfuscate variable to prevent compiler optimizations.  */
  __asm__ ("" : "+r" (info));

  while (info != end)
  {
    void *arg = NULL;
    /* ideally we only need is the info in the gcov_info block, pointed by the __gcov_info_start */
    
    __gcov_info_to_gcda (*info, filename, dump, allocate, arg); /* dump is done during the processing */
    /* with a debugger we can read out information and with a python script convert this info into gcda file */
    /* filename, dump and allocate would not be needed */
    /* if you set a bp here you can dump the array */
    SEGGER_RTT_printf(0, "\n");
    ++info;
  }
}

/* The main() function just runs the application and then dumps the gcov
   information to stderr.  */

int
main (void)
{
  SEGGER_RTT_ConfigUpBuffer(0, NULL, NULL, BUFFER_SIZE_UP, SEGGER_RTT_MODE_BLOCK_IF_FIFO_FULL);

  uint8_t count = 0;
  for (int i = 0; i< 100; i++)
  {
    count++;
  }

  test1();
  random_function(10);

  dump_gcov_info ();
  return 0;
}