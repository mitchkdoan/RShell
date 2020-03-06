#ifndef __PIPE_H__
#define __PIPE_H__

#include "Connector.h"

class Pipe : public Connector {
    private:

    public:
        Pipe() : Connector() {}
        Pipe(Base* l, Base* r) : Connector(l, r) {}
        bool execute();
};

#endif