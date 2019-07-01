
using Libdl

const libnames = ["libplasma", "plasma"]

found = false

global const libname = find_library(libnames, [])
if libname != nothing
    dlopen(libname)
else
    error("Plasma library not loaded: You currently need to build plasma locally")
end
