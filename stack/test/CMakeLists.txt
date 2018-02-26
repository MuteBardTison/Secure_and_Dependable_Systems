cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

pkg_check_modules(CHECK REQUIRED check)

include_directories(${CMAKE_SOURCE_DIR}/src)

add_executable(check-stack check-stack.c)

target_link_libraries(check-stack stack
	${CHECK_LIBRARIES}
	${CMAKE_THREAD_LIBS_INIT}
)
