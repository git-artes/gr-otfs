INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_OTFS otfs)

FIND_PATH(
    OTFS_INCLUDE_DIRS
    NAMES otfs/api.h
    HINTS $ENV{OTFS_DIR}/include
        ${PC_OTFS_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    OTFS_LIBRARIES
    NAMES gnuradio-otfs
    HINTS $ENV{OTFS_DIR}/lib
        ${PC_OTFS_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/otfsTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(OTFS DEFAULT_MSG OTFS_LIBRARIES OTFS_INCLUDE_DIRS)
MARK_AS_ADVANCED(OTFS_LIBRARIES OTFS_INCLUDE_DIRS)
