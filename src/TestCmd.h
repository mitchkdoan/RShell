#ifndef __TESTCMD_H__
#define __TESTCMD_H__

#include "Base.h"
#include <string>

using namespace std;

class TestCmd : public Base {
    private:
        std::string cmd;
    public:
        TestCmd() : Base() {}
        TestCmd(std::string commands) : cmd(commands) {}
        std::string get_string() {
            return cmd;
        }
        std::string get_flag();
        std::string parse_cmd();
        bool execute();
};

#endif
