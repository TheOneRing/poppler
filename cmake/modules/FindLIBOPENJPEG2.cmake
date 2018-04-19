# - Try to find the libopenjpeg2 library
# Once done this will define
#
#  LIBOPENJPEG2_FOUND - system has libopenjpeg
#  LIBOPENJPEG2_INCLUDE_DIRS - the libopenjpeg include directories
#  LIBOPENJPEG2_LIBRARIES - Link these to use libopenjpeg

# Copyright (c) 2008, Albert Astals Cid, <aacid@kde.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.


if (LIBOPENJPEG2_LIBRARIES AND LIBOPENJPEG2_INCLUDE_DIR)

  # in cache already
  set(LIBOPENJPEG2_FOUND TRUE)

else ()

  find_package(OPENJPEG REQUIRED)
  set(LIBOPENJPEG2_FOUND ${OPENJPEG_FOUND})
  set(LIBOPENJPEG2_INCLUDE_DIRS ${OPENJPEG_INCLUDE_DIRS})
  set(LIBOPENJPEG2_LIBRARIES ${OPENJPEG_LIBRARIES})

  if (LIBOPENJPEG2_FOUND)
    add_definitions(-DUSE_OPENJPEG2)
  endif ()
endif ()
