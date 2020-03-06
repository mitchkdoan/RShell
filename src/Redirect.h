#ifndef __REDIRECT_H__
#define __REDIRECT_H__

#include "Base.h"
#include <string>

class Redirect : public Base {
    private:
        Base* lhs;
        std::string rhs;
    public:
        Redirect() : Base() {}
        Redirect(Base* left, std::string right) : lhs(left), rhs(right) {}
        virtual bool execute() = 0;
        Base* get_left() {
            return lhs;
        }
        std::string get_right() {
            return rhs;
        }
        void set_left(Base* cmd) {
            lhs = cmd;
        }
        void set_right(std::string out) {
            rhs = out;
        }
        
    
};

#endif