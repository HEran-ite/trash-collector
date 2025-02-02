# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_trash_collector_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED trash_collector_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(trash_collector_FOUND FALSE)
  elseif(NOT trash_collector_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(trash_collector_FOUND FALSE)
  endif()
  return()
endif()
set(_trash_collector_CONFIG_INCLUDED TRUE)

# output package information
if(NOT trash_collector_FIND_QUIETLY)
  message(STATUS "Found trash_collector: 0.1.0 (${trash_collector_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'trash_collector' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${trash_collector_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(trash_collector_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${trash_collector_DIR}/${_extra}")
endforeach()
