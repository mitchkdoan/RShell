CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

SET(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

ADD_EXECUTABLE(rshell
    src/main.cpp
    src/Command.cpp
    src/And.cpp
    src/Or.cpp
    src/TestCmd.cpp
    src/Semi.cpp
    src/InRedirect.cpp
    src/OutRedirect.cpp
    src/DOutRedirect.cpp
    src/Pipe.cpp
)

