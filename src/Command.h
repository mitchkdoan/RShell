#ifndef __COMMAND_H__
#define __COMMAND_H__

#include <string>
#include "Base.h"

class Command : public Base {
    private:
        std::string cmd;
    public:
        Command() : Base() {}
        Command(std::string commands) : cmd(commands) {}
        bool execute();
        std::string get_string() {
            return cmd;
        }
};

#endif
