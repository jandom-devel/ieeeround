/*
 * Set/Get rounding mode wrapper function for R
 * 
 * Copyright 2010,2011 Gianluca Amato
 */

#include <fenv.h>
#include "ieeeround.h"
#include "R.h"

/* #define DEBUG */

void _r_fegetround(int *rounding_mode) 
{
#ifdef DEBUG
  warning("Starting _r_fegetround. Rounding mode input is %d\n",*rounding_mode);
#endif
  *rounding_mode =  fegetround();
#ifdef DEBUG
  warning("Ending_r_fegetround. Rounding mode input is %d\n",*rounding_mode);
#endif
}

void _r_fesetround(int *rounding_mode)
{
#ifdef DEBUG
  warning("Starting _r_fesetround. Rounding mode input is %d\n",*rounding_mode);
#endif
  *rounding_mode = fesetround(*rounding_mode);
#ifdef DEBUG
  warning("Ending_r_fesetround. Current rounding mode input is %d\n",fegetround());
#endif
}

