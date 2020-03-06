#include "Command.h"
#include <iostream>
#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <stdlib.h>
#include <vector>
#include <cstring>

using namespace std;

bool Command::execute() {
    if (cmd == "exit") {
        exit(0);
    }
    
    vector<char> v;

    string input = get_string();
    
    for(unsigned i = 0; i < input.size(); ++i) {  // take string and split it into char vector
        v.push_back(input.at(i));
    }
    
    unsigned i;
    string str1 = "";
    string str2 = "";
    
    for (i = 0; i < v.size() && v.at(i) != ' '; ++i) {  // executable stored in first string
        str1 = str1 + v.at(i);
    }
    
    char* args[3];
    
    if (i != v.size()) {
        for (unsigned j = i + 1; j < v.size(); ++j) {  // arguments stored in second string
            str2 = str2 + v.at(j);
        }
        args[0] = (char*)str1.c_str();
        args[1] = (char*)str2.c_str();
        args[2] = NULL;
    }
    else {
        args[0] = (char*)str1.c_str();  // check if executable with no args (ls)
        args[1] = NULL;
    }
    
    // char* c = (char*)get_string().c_str();
    // vector<char*> args;
    // char* temp;
    
    // temp = strtok(c, " ");  // new method to parse
    
    // while (temp != NULL) {
    //     if (temp != '\0') {
    //         args.push_back(temp);
    //     }
    //     temp = strtok(NULL, " ");
    // }
    
    // char** a = new char*[args.size() + 1];
    
    // for (int i = 0; i < args.size(); i++) {
    //     a[i] = args.at(i);
    // }
    // a[args.size()] = NULL;
    
    int status;
    pid_t pid = fork();
    
    if (pid == -1) {
        perror("fork");
        return false;
    }
    
    else if (pid == 0) {
        if (execvp(args[0], args) == -1) {
            perror ("exec");
            exit(1);
            return false;
        }
    }
    
    else if (pid > 0) {
        do { waitpid(pid, &status, 0); }
        while (WIFEXITED(status) == -1);
    }
    return !WEXITSTATUS(status);
}
