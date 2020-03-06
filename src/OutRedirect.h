#ifndef __OUTREDIRECT_H__
#define __OUTREDIRECT_H__

#include "Redirect.h"

class OutRedirect : public Redirect {
    private:

    public:
        OutRedirect() : Redirect() {}
        OutRedirect(Base* l, std::string r) : Redirect(l, r) {}
        bool execute();
};

#endif