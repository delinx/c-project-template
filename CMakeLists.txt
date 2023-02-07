cmake_minimum_required(VERSION 3.1)

set(PROJECT_NAME template)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -fsanitize=address,undefined -Wall -Wextra -fno-omit-frame-pointer -fcolor-diagnostics")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -fcolor-diagnostics")

project(
  ${PROJECT_NAME}
  VERSION 0.0.1
  LANGUAGES C)

add_executable(${PROJECT_NAME} src/main.c)

target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_INCLUDE})
target_link_libraries(${PROJECT_NAME} PRIVATE)

if(UNIT_TEST)
  add_definitions(-DUNIT_TEST)
endif()
