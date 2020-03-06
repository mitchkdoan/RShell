#include "OutRedirect.h"

#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

using namespace std;

bool OutRedirect::execute() {
    int in, out;
    bool ex;
    
    in = dup(1);
    out = creat(get_right().c_str(), S_IRWXU);
    
    close(1);
    dup2(out, 1);
    
    ex = get_left()->execute();
    
    close(1);
    dup2(in, 1);
    
    return ex;
}