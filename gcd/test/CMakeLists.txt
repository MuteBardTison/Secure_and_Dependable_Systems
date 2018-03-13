cmake_minimum_required(VERSION 3.0 FATAL_ERROR)

pkg_check_modules(CHECK REQUIRED check)

include_directories(${CMAKE_SOURCE_DIR}/src)

add_executable(check-gcd check-gcd.c)

target_link_libraries(check-gcd gcd
	${CHECK_LIBRARIES}
	${CMAKE_THREAD_LIBS_INIT})
