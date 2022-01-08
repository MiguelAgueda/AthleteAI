cmake_minimum_required(VERSION 3.4)

add_subdirectory(Libraries/OakD)
project(AthleteAI)

add_executable(main Source/Main.cpp)
target_link_libraries(main PUBLIC OakD)