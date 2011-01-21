# 
# Initialization code for ieeeround
# 

.First.lib <- function(libname, pkgname) library.dynam("ieeeround")
.Last.lib <- function(libpath) library.dynam.unload("ieeeround", libpath)

