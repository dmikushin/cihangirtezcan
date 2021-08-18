cmake_minimum_required(VERSION 3.19)

project(cihangirtezcan)

enable_language(CUDA)

file(GLOB SRCS "include/${PROJECT_NAME}/*.h" "include/${PROJECT_NAME}/detail/*.cuh")
add_library(${PROJECT_NAME} INTERFACE ${SRCS})
target_include_directories(${PROJECT_NAME} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(test_${PROJECT_NAME} "src/test_${PROJECT_NAME}.cu")
target_link_libraries(test_${PROJECT_NAME} ${PROJECT_NAME})

