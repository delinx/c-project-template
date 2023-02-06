cmake_minimum_required(VERSION 3.1)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(PROJECT_NAME template)


project(
  ${PROJECT_NAME}
  VERSION 0.0.1
  LANGUAGES C)

add_executable(${PROJECT_NAME} src/main.c)

if(UNIT_TEST)
  add_definitions(-DUNIT_TEST)
endif()
