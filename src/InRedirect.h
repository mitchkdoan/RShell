#ifndef __INREDIRECT_H__
#define __INREDIRECT_H__

#include "Redirect.h"

class InRedirect : public Redirect {
    private:

    public:
        InRedirect() : Redirect() {}
        InRedirect(Base* l, std::string r) : Redirect(l, r) {}
        bool execute();
};

#endif