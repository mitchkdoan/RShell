#include "And.h"
#include <iostream>

using namespace std;

bool And::execute() {
    if (get_left()->execute()) {
        return get_right()->execute();
    }
    return false;
}