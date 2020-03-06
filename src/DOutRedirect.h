#ifndef __DOUTREDIRECT_H__
#define __DOUTREDIRECT_H__

#include "Redirect.h"

class DOutRedirect : public Redirect {
    private:

    public:
        DOutRedirect() : Redirect() {}
        DOutRedirect(Base* l, std::string r) : Redirect(l, r) {}
        bool execute();
};

#endif