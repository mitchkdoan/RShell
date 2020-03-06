#ifndef __SEMI_H__
#define __SEMI_H__

#include "Connector.h"

class Semi : public Connector {
    private:
        
    public:
        Semi() : Connector() {}
        Semi(Base* l, Base* r) : Connector(l, r) {}
        bool execute();
};

#endif