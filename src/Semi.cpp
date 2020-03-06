#include "Semi.h"
#include <iostream>

using namespace std;

bool Semi::execute() {
    get_left()->execute();
    return get_right()->execute();
}