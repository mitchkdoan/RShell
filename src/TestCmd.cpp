#include "TestCmd.h"
#include <iostream>
#include <string>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>

using namespace std;

std::string TestCmd::get_flag() {
    string s = get_string();
    
    if (s.find("-d") != string::npos) {
        s = "d flag";
        return s;
    }
    else if (s.find("-f") != string::npos) {
        s = "f flag";
        return s;
    }
    else if (s.find("-e") != string::npos) {
        s = "e flag";
        return s;
    }
    else {
        s = "no flag";
        return s;
    }
}

std::string TestCmd::parse_cmd() {
    string s = get_string();
    
    if (s.front() == '[') {
        s.erase(0,1);
        while (s.front() == ' ') { // delete all white space after left bracket
            s.erase(0,1);
        }
        s.erase (s.size() - 1,1); // delete all white space before right bracket
        while (s.back() == ' ') {
            s.erase(s.size() - 1,1);
        }
        if (s.front() == '-') {
            s.erase(0,3);
        }
    }
    else if (s.substr(0,4) == "test") { // delete "test" from string
        s.erase(0,5);
        if (s.front() == '-') {
            s.erase(0,3);
        }
    }
    return s;
}

bool TestCmd::execute() {
    struct stat sb;
    string s = parse_cmd();
    string flag = get_flag();
    
    char* cmd = (char*)s.c_str(); // turn string into c_string
    
    if (flag == "d flag") {
        if (stat(cmd, &sb) == 0 && S_ISDIR(sb.st_mode)) {
            cout << "true" << endl;
            return true;
        }
    }
    else if (flag == "e flag" || flag == "no flag") {
        if (stat(cmd, &sb) == 0) {
			cout << "true" << endl;
			return true;
        }
    }
    else if (flag == "f flag") {
        if (stat(cmd, &sb) == 0 && S_ISREG(sb.st_mode)) {
            cout << "true" << endl;
            return true;
        }
    } 
    cout << "false" << endl;
    return false;
}

