#include <stddef.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

#include "ieeeround.h"

static R_NativePrimitiveArgType cArgs[] = {
    INTSXP
};

static const R_CMethodDef cMethods[] = {
  { "r_fegetround", (DL_FUNC) r_fegetround, 1, cArgs },
  { "r_fesetround", (DL_FUNC) r_fesetround, 1, cArgs },
  {NULL, NULL, 0}
};

void R_init_ieeeround(DllInfo *dll)
{
  R_registerRoutines(dll, cMethods, NULL, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
  R_forceSymbols(dll, TRUE);
}
