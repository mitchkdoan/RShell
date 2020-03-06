#ifndef __PIPE_H__
#define __PIPE_H__

#include "Redirect.h"

class Pipe : public Redirect {
    private:

    public:
        Pipe() : Redirect() {}
        Pipe(Base* l, std::string r) : Redirect(l, r) {}
        bool execute();
};

#endif