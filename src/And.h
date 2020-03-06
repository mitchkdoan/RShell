#ifndef __AND_H__
#define __AND_H__

#include "Connector.h"

class And : public Connector{
    private:

    public:
        And() : Connector() {}
        And(Base* l, Base* r) : Connector(l, r) {}
        bool execute();
};

#endif