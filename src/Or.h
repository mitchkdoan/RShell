#ifndef __OR_H__
#define __OR_H__

#include "Connector.h"

class Or : public Connector {
    private:
    
    public:
        Or() : Connector() {}
        Or(Base* l, Base* r) : Connector(l, r) {}
        bool execute();
};

#endif