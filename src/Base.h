#ifndef __BASE_H__
#define __BASE_H__

class Base {
    public:
    Base() {}
    virtual ~Base() {}
    virtual bool execute() = 0;
};

#endif
