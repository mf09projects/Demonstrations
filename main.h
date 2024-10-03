#include <stdint.h>
#include <stdio.h>
#include "SEGGER_RTT.h"

static const unsigned char a = 'a';

// put it in #endif
static inline unsigned char *
encode (unsigned char c, unsigned char buf[2])
{
  // Return hexadecimal representation of c
  uint8_t c_high = (c >> 4)&0x0f;
  uint8_t c_low = (c)&0x0f;

  uint8_t c_buf[2] = {c_high, c_low};

  for (int i=0; i<2; i++)
  {
    if (c_buf[i] <= 9)
    {
      buf[i] = c_buf[i] + '0';
    }
    else
    {
      buf[i] = c_buf[i] - 10 + a;
    }
  }

  return buf;
}

extern void application (void);
