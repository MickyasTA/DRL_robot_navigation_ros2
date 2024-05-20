# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_td3_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED td3_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(td3_FOUND FALSE)
  elseif(NOT td3_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(td3_FOUND FALSE)
  endif()
  return()
endif()
set(_td3_CONFIG_INCLUDED TRUE)

# output package information
if(NOT td3_FIND_QUIETLY)
  message(STATUS "Found td3: 0.0.0 (${td3_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'td3' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${td3_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(td3_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${td3_DIR}/${_extra}")
endforeach()
