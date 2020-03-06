#include "Pipe.h"

#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <cstring>
#include <vector>

using namespace std;

bool Pipe::execute() {
    char* c = (char*)get_right().c_str(); // need to parse right side
    vector<char*> args;
    char* temp;
    
    temp = strtok(c, " ");
    
    while (temp != NULL) {
        if (temp != '\0') {
            args.push_back(temp);
        }
        temp = strtok(NULL, " ");
    }
    
    char** a = new char*[args.size() + 1];
    
    for (int i = 0; i < args.size(); i++) {
        a[i] = args.at(i);
    }
    a[args.size()] = NULL;
    
    int p[2]; // begin piping process
    pipe(p);
    
    int status;
    pid_t pid = fork(); // this pid tracks pipeline process
    
    if (pid == -1) {
        perror("fork");
        return false;
    }
    else if (pid == 0) {
        pid_t pid2 = fork(); // this pid tracks execution process
        
        if (pid2 == -1) {
            perror("fork");
            return false;
        }
        else if (pid2 == 0) {
            if (dup2(p[0], 0) == -1) {
                perror("dup");
                return false;
            }
            if (close(p[1]) == -1) {
                perror("close");
                return false;
            }
            if (execvp(a[0], a) == -1) { // execute rhs
                perror("exec");
                exit(1);
                return false;
            }
        }
        else if (pid2 > 0) {
            if (dup2(p[1], 1) == -1) {
                perror("dup");
                return false;
            }
            if (close(p[1]) == -1) {
                perror("close");
                return false;
            }
            if (!get_left()->execute()) { // execute lhs
                perror("exec");
                exit(1);
                return false;
            }
        }
    }
    else if (pid > 0) {
        if (close(p[1]) == -1) {
            perror("close");
            return false;
        }
        if (close(p[0]) == -1) {
            perror("close");
            return false;
        }
        
        do { waitpid(pid, &status, 0); }
        while (WIFEXITED(status) == -1);
        
        return !WEXITSTATUS(status);
    }
}