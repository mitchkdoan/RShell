#include "InRedirect.h"

#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

using namespace std;

bool InRedirect::execute() {
    int in, out;
    bool ex;
    
    in = dup(0);
    out = open(get_right().c_str(), O_RDONLY);
    
    close(0);
    dup2(out, 0);
    
    ex = get_left()->execute();
    
    close(0);
    dup2(in, 0);
    
    return ex;
}