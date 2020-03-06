#ifndef __CONNECTOR_H__
#define __CONNECTOR_H__

#include "Base.h"

class Connector : public Base {
    private:
        Base* lhs;
        Base* rhs;
    public:
        Connector() : Base() {}
        Connector(Base* left, Base* right) : lhs(left), rhs(right) {}
        virtual bool execute() = 0;
        Base* get_left() {  // get functions used within execute()
            return lhs;
        }
        Base* get_right() {
            return rhs;
        }
        void set_left(Base* cmd) { // set functions used within main
            lhs = cmd;
        }
        void set_right(Base* cmd) {
            rhs = cmd;
        }
};

#endif