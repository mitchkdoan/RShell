#include <iostream>
#include <cstring>
#include <string>
#include <vector>

#include "And.h"
#include "Or.h"
#include "Semi.h"
#include "Command.h"
#include "TestCmd.h"
#include "InRedirect.h"
#include "OutRedirect.h"
#include "DOutRedirect.h"
#include "Pipe.h"

using namespace std;

void remove_whitespace(string &s) {
    while (s.front() == ' ') { // removes extra spaces
        s.erase(0, 1);
    }
    while (s.back() == ' ') {
        s.erase(s.size() - 1, 1);
    }
    while (s.front() == '(') { // removes parenthesis from string before adding into cmd vector
        s.erase(0, 1);
    }
    while (s.back() == ')') {
        s.erase(s.size() - 1, 1);
    }
    return;
}

void parse_string(vector<string> &cmd, vector<char> &cntr, string in) {
    int index = 0;
    string temp;
    in = in.substr(0, in.find("#"));

    for (int i = 0; i < in.size(); i++) {
        if ((in.at(i) == ';') || (in.at(i) == '&' && in.at(i+1) == '&') || (in.at(i) == '|' && in.at(i+1) == '|')) {
            cntr.push_back(in.at(i));
            temp = in.substr(index, i - index);
            remove_whitespace(temp);
            cmd.push_back(temp);
            if (i < in.size() - 1) {
                if (in.at(i+1) == '|') { // adds +1 to index i due to "||"
                    i++;
                }
                index = i + 2; // assume there is always whitespace
            }
        }
        else if (in.at(i) == '(' || in.at(i) == ')') {
            cntr.push_back(in.at(i));
            if (i < in.size() - 1) {
                // index = i + 1; 
            }
            else {
                temp = in.substr(index, i - index);
                remove_whitespace(temp);
                cmd.push_back(temp);
            }
        }
        else if (in.at(i) == '<' || (in.at(i) == '>' && in.at(i+1) != '>') || (in.at(i) == '>' && in.at(i+1) == '>') || in.at(i) == '|') {
            if (in.at(i) == '>' && in.at(i+1) == '>') {
                cntr.push_back('o');
            }
            else if (in.at(i) == '|') {
                cntr.push_back('p');
            }
            else {
                cntr.push_back(in.at(i));
            }
            temp = in.substr(index, i - index);
            remove_whitespace(temp);
            cmd.push_back(temp);
            if (i < in.size() - 1) {
                if (in.at(i+1) == '>') { // adds +1 to index i due to ">>"
                    i++;
                }
                index = i + 2; // assume there is always whitespace
            }
        }
        else if (i == in.size() - 1) { // command with no semicolon
            temp = in.substr(index, in.size() - index);
            remove_whitespace(temp);
            cmd.push_back(temp);
        }
    }
    return;
}

Base* double_command(Base* &prev, vector<string> &cmd, vector<char> &cntr, bool &flag, int &p_counter) {
    Connector* c_obj;
    Redirect* r_obj;
    char c;
    
    //  TYPE OF CNTR OBJECT SET HERE
    if (cntr.front() == ';') {
        c_obj = new Semi();
    }
    else if (cntr.front() == '&') {
        c_obj = new And();
    }
    else if (cntr.front() == '|') {
        c_obj = new Or();
    }
    else if (cntr.front() == '(') {
        p_counter++;
        cntr.erase(cntr.begin());
        flag = false; // reset flag b/c need to set cmd object
        return double_command(prev, cmd, cntr, flag, p_counter); // recursion of lhs
    }
    else if (cntr.front() == ')') {
        p_counter--;
        cntr.erase(cntr.begin());
        return double_command(prev, cmd, cntr, flag, p_counter); // recursion of lhs
    }
    else if (cntr.front() == '<') {
        r_obj = new InRedirect();
    }
    else if (cntr.front() == '>') {
        r_obj = new OutRedirect();
    }
    else if (cntr.front() == 'o') {
        r_obj = new DOutRedirect();
    }
    else if (cntr.front() == 'p') {
        r_obj = new Pipe();
    }
    c = cntr.front();
    cntr.erase(cntr.begin());
    
    //  LEFT SIDE OF CNTR SET HERE
    if (flag == false) { // flag checks if needs to set to cmd object or cntr object
        if (cmd.at(0).find("test -") != string::npos || cmd.at(0).find("test ") != string::npos || cmd.at(0).front() == '[') {
            c_obj->set_left(new TestCmd(cmd.at(0))); // creates new TestCmd* obj
            cmd.erase(cmd.begin());
        }
        else if (c == '<' || c == '>' || c == 'o' || c == 'p') {
            if (cmd.at(0).find("test -") != string::npos || cmd.at(0).find("test ") != string::npos || cmd.at(0).front() == '[') {
                r_obj->set_left(new TestCmd(cmd.at(0)));
                cmd.erase(cmd.begin());
            }
            else {
                r_obj->set_left(new Command(cmd.at(0)));
                cmd.erase(cmd.begin());
            }
        }
        else {
            c_obj->set_left(new Command(cmd.at(0))); // else creates new Cmd* obj
            cmd.erase(cmd.begin());
        }
        flag = true;
    }
    else {
        if (c == '<' || c == '>' || c == 'o' || c == 'p') {
            r_obj->set_left(prev);
        }
        else {
            c_obj->set_left(prev);
        }
    }
    
    //  RIGHT SIDE OF CNTR SET HERE
    if (cntr.front() == '(') {
        c_obj->set_right(double_command(prev, cmd, cntr, flag, p_counter));
    }
    else {    
        if (cmd.at(0).find("test -") != string::npos || cmd.at(0).find("test ") != string::npos || cmd.at(0).front() == '[') {
            c_obj->set_right(new TestCmd(cmd.at(0))); // creates new TestCmd* obj
            cmd.erase(cmd.begin());
        }
        else if (c == '<' || c == '>' || c == 'o' || c == 'p') {
            r_obj->set_right(cmd.at(0));
            cmd.erase(cmd.begin());
        }
        else {
            c_obj->set_right(new Command(cmd.at(0))); // else creates new Cmd* obj
            cmd.erase(cmd.begin());
        }
    }
    
    if (!cntr.empty()) {
        while (cntr.front() == ')' && !cntr.empty()) { // deletes ending ')'
            cntr.erase(cntr.begin());
            p_counter--;
        }
    }
    
    if (c == '<' || c == '>' || c == 'o' || c == 'p') {
        prev = r_obj;
        return r_obj;
    }
    else {
        prev = c_obj;
        return c_obj;
    }
}

Base* single_command(vector<string> &cmd, vector<char> &cntr) {
    // creates CMD object that takes in from cmd vector
    Base* new_obj;
    
    if (cmd.at(0).find("test -") != string::npos || cmd.at(0).find("test ") != string::npos || cmd.at(0).front() == '[') {
        new_obj = new TestCmd(cmd.at(0)); // creates new TestCmd* obj
        cmd.erase(cmd.begin());
    }
    else {
        new_obj = new Command(cmd.at(0)); // else creates new Cmd* obj
        cmd.erase(cmd.begin());
    }
    
    return new_obj;
}