#include "Or.h"
#include <iostream>

using namespace std;

bool Or::execute() {
    if (!(get_left()->execute())) {
        return get_right()->execute();
    }
    return true;
}