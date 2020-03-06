#include "CPipe.h"

#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

using namespace std;

bool Pipe::execute() {
    int p[2];   // start piping process
    pipe(p);
    int out = dup(1);
    int in = dup(0);
    
    if (out == -1) {
        perror("dup");
        return false;
    }
    if (in == -1) {
        perror("dup");
        return false;
    }
    if (dup2(p[1], 1) == -1) {
        perror("dup2");
        return false;
    }
    if (dup2(p[0], 0) == -1) {
        perror("dup2");
        return false;
    }
    dup2(p[1], 1);
    dup2(p[0], 0);

    bool ex_left = get_left()->execute(); // pipes set, start execution

    if (dup2(out, 1) == -1) {
        perror("left");
        return false;
    }
    if (close(p[1]) == -1) {
        perror("close");
        return false;
    }
    if (!ex_left) {
        return false;
    }
    dup2(out, 1);
    close(p[1]);
    
    int status;
    pid_t pid = fork(); 
    
    if (pid == -1) {
        perror("fork");
        return false;
    }
    else if (pid == 0) {
        if (execvp(a[0], a) == -1) {
            perror("exec");
            exit(1);
            return false;
        }
    }
    else if (pid > 0) {
        if (dup2(in, 0) == -1) {
            perror("right");
            return false;
        } 
        if (close(p[0]) == -1) {
            perror("close");
            return false;
        }
        
        dup2(in, 0);
        close(p[0]);

        do { waitpid(pid, &status, 0); }
        while (WIFEXITED(status) == -1);
        
        return !WEXITSTATUS(status);
        
        waitpid(pid, &status, 0);
        
        if (status > 0) {
            return false;
        }
        else if (WEXITSTATUS(status) == 0) {
            return true;
        }
        else if (WEXITSTATUS(status) == 1) {
            return false;
        }
    }
}