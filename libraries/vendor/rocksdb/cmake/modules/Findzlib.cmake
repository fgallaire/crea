# - Find zlib
# Find the zlib compression library and includes
#
# ZLIB_INCLUDE_DIR - where to find zlib.h, etc.
# ZLIB_LIBRARIES - List of libraries when using zlib.
# ZLIB_FOUND - True if zlib found.

set(ZLIB_INCLUDE_DIR $ENV{ZLIB_ROOT}/include )

find_path(ZLIB_INCLUDE_DIR
  NAMES zlib.h
  HINTS ${ZLIB_ROOT_DIR}/include)

find_library(ZLIB_LIBRARIES
  NAMES z
  HINTS ${ZLIB_ROOT_DIR}/lib)

message(STATUS "Check Zlib => ${ZLIB_INCLUDE_DIR}, ${ZLIB_LIBRARIES}")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(zlib DEFAULT_MSG ZLIB_LIBRARIES ZLIB_INCLUDE_DIR)

mark_as_advanced(
  ZLIB_LIBRARIES
  ZLIB_INCLUDE_DIR)
