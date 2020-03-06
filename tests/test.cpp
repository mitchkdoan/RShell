#include "gtest/gtest.h"
#include <iostream>
#include <stdlib.h>
#include <vector>
#include <string>
#include <unistd.h>
#include <sys/wait.h>
#include <cstring>
#include "../src/Command.cpp"
#include "../src/And.cpp"
#include "../src/Or.cpp"
#include "../src/Semi.cpp"
#include "../src/maintesting.h"
#include "../src/TestCmd.cpp"
#include "../src/InRedirect.cpp"
#include "../src/OutRedirect.cpp"
#include "../src/DOutRedirect.cpp"
#include "../src/Pipe.cpp"
#include <fstream>

using namespace std;

TEST(ParseFunc, CommandVector) {
    string temp = "ls -a";
    vector<string> cmd;
    vector <char> cntr;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    cout << cmd.at(0);
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("ls -a", print);
}

TEST(ParseFunc, CommandVectorWithSpaces) {
    string temp = "ls -a && echo hello ";
    vector<string> cmd;
    vector <char> cntr;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout(); 
    cout << cmd.at(0);
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("ls -a", print);

    testing::internal::CaptureStdout();
    cout << cmd.at(1);
    print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("echo hello", print);
}

TEST(ParseFunc, ConnectorVector) {
    string temp = "ls -a && echo hello";
    vector<string> cmd;
    vector <char> cntr;
   
    parse_string(cmd, cntr, temp);
    
    testing::internal::CaptureStdout();
    cout << cntr.at(0);
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("&", print);
}

TEST(ParseFunc, ConnectorVectorMoreThanOne) {
    string temp = "ls -a && echo hello || touch main.cpp";
    vector<string> cmd;
    vector <char> cntr;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    cout << cntr.at(0);
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("&", print);

    testing::internal::CaptureStdout();
    cout << cntr.at(1);
    print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("|", print);
}

TEST(ParseFunc, ConnectorVectorNoConnector) {
    string temp = "ls";
    vector<string> cmd;
    vector <char> cntr;
    bool empty = true;

    parse_string(cmd, cntr, temp);

    EXPECT_EQ(empty, cntr.empty());
}

TEST(ParseFunc, Hashtag) {
    string temp = "touch me.cpp # don't touch me";
    vector<string> cmd;
    vector <char> cntr;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    cout << cmd.at(0);
    string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("touch me.cpp", print);
}

TEST(CreateBaseObject, SingleCommand) {
    string temp = "ls";
    Command* obj = new Command(temp);

    EXPECT_EQ("ls", obj->get_string());
}

TEST(CreateBaseObject, DoubleCommand) {
    string temp = "echo hello && echo world";
    vector<string> cmd;
    vector<char> cntr;

    parse_string(cmd, cntr, temp);    
    
    Command* l_cmd = new Command(cmd.at(0));
    Command* r_cmd = new Command(cmd.at(1));

    EXPECT_EQ("echo hello", l_cmd->get_string());
    EXPECT_EQ("echo world", r_cmd->get_string());
}

TEST(ExecuteCmd, FirstTest)  {
    string temp = "echo hello world";
    
    Command* obj = new Command(temp);

    testing::internal::CaptureStdout();
    obj->execute();
    string print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("hello world\n", print);
}

TEST(ExecuteCmd, SecondTest)  {
    string temp = "echo  the sky is blue ";

    Command* obj = new Command(temp);

    testing::internal::CaptureStdout();
    obj->execute();
    string print = testing::internal::GetCapturedStdout();

    EXPECT_EQ(" the sky is blue \n", print);
}

TEST(ExecuteCmd, ThirdTest)  {
    string temp = "echoPepeHands";
    bool flag;
    string print;

    Command* obj = new Command(temp);
    
    flag = obj->execute();
   
    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("exec: No such file or directory\n", print);
}

TEST(ExecuteCmd, FourthTest)  {
    string temp = "ech very nice";
    bool flag;
    string print;

    Command* obj = new Command(temp);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("exec: No such file or directory\n", print);
}

TEST(ExecuteCntr, AndTestBothSuccess) {
    string temp = "echo hello && echo world";   
    vector<string> cmd;
    vector<char> cntr;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));
    
    Connector* obj = new And(l_cmd, r_cmd);

    testing::internal::CaptureStdout();
    obj->execute();
    string print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("hello\nworld\n", print);
}

TEST(ExecuteCntr, AndTestLeftFails) {
    string temp = "ech hello && echo world";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new And(l_cmd, r_cmd);
   
    flag = obj->execute();
    
    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        print = testing::internal::GetCapturedStdout();
    }
    
    EXPECT_EQ("exec: No such file or directory\n", print);
}

TEST(ExecuteCntr, AndTestRightFails) {
    string temp = "echo hello && ech world";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new And(l_cmd, r_cmd);

    testing::internal::CaptureStdout();
    flag = obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("hello\n", print);
}

TEST(ExecuteCntr, OrTestLeftSuccess) {
    string temp = "echo Feels || echo Bad";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    
    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new Or(l_cmd, r_cmd);

    testing::internal::CaptureStdout();
    obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("Feels\n", print);
}

TEST(ExecuteCntr, OrTestLeftFails) {
    string temp = "ech Feels || echo Bad";
    vector<string> cmd;
    vector<char> cntr;
    string print;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new Or(l_cmd, r_cmd);

    testing::internal::CaptureStdout();
    obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("Bad\n", print);
}

TEST(ExecuteCntr, OrTestBothFail) {
    string temp = "ech Feels || echoBad";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new Or(l_cmd, r_cmd);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n"; 
    }

    EXPECT_EQ("exec: No such file or directory\n", print);
}

TEST(ExecuteCntr, SemiTestBothPass) {
    string temp = "echo x; echo D";
    vector<string> cmd;
    vector<char> cntr;
    string print;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new Semi(l_cmd, r_cmd);

    testing::internal::CaptureStdout();
    obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("x\nD\n", print);
}

TEST(ExecuteCntr, SemiTestFirstFails) {
    string temp = "ech x; echo D:";
    vector<string> cmd;
    vector<char> cntr;
    string print;

    parse_string(cmd, cntr, temp);

    Base* l_cmd = new Command(cmd.at(0));
    Base* r_cmd = new Command(cmd.at(1));

    Connector* obj = new Semi(l_cmd, r_cmd);
    
    testing::internal::CaptureStdout();
    obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("D:\n", print);
}

TEST(ExecuteMultipleCmds, AllConnectorsFirstTest) {
    string temp = "echo a; echo b && echo c; echo d || echo e";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;
    Base* prev;
    Base* obj;
    int counter = 0;

    parse_string(cmd, cntr, temp);
    
    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    testing::internal::CaptureStdout(); 
    flag = obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("a\nb\nc\nd\n", print);   
}

TEST(ExecuteMultipleCmds, AllConnectorsSecondTest) {
    string temp = "echo a || echo b || echo c && echo d || echo e; echo f";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;
    Base* prev;
    Base* obj;
    int counter = 0;

    parse_string(cmd, cntr, temp);

    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    testing::internal::CaptureStdout();
    flag = obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("a\nd\nf\n", print);
}

TEST(ParseCmd, BracketsEFlag) {
    string s = "[ -e tests/test.cpp ]";

    TestCmd* obj = new TestCmd(s);

    string temp = obj->parse_cmd();

    testing::internal::CaptureStdout();
    cout << temp;
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("tests/test.cpp", print);
}

TEST(ParseCmd, TestFFlag) {
    string s = "test -f tests/test.cpp";

    TestCmd* obj = new TestCmd(s);

    string temp = obj->parse_cmd();

    testing::internal::CaptureStdout();
    cout << temp;
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("tests/test.cpp", print);
}

TEST(ParseCmd, BracketsNoFlag) {
    string s = "[ tests/test.cpp ]";

    TestCmd* obj = new TestCmd(s);

    string temp  = obj->parse_cmd();

    testing::internal::CaptureStdout();
    cout << temp;
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("tests/test.cpp", print);
}

TEST(ParseParenthesis, ConnectorVector) {
    string temp = "((echo a || test -e tests/test.cpp) && [ tests/test.cpp ])";
    vector<string> cmd;
    vector <char> cntr;
    int i;    

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    
    for (i = 0; i < cntr.size(); ++i) {
    	cout << cntr.at(i) << endl;
    }

    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("(\n(\n|\n)\n&\n)\n", print);
}

TEST(ExecuteTestCmd, NoBracketsWithEFlag)  {
    string temp = "test -e tests/test.cpp";
    bool flag;
    string print;

    TestCmd* obj = new TestCmd(temp);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        obj->execute();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("true\n", print);
}

TEST(ExecuteTestCmd, BracketsWithFFlag)  {
    string temp = "[ -f tests/test.cpp ]";
    bool flag;
    string print;

    TestCmd* obj = new TestCmd(temp);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        obj->execute();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("true\n", print);
}

TEST(ExecuteTestCmd, NoBracketsWithDFlag)  {
    string temp = "test -d tests";
    bool flag;
    string print;

    TestCmd* obj = new TestCmd(temp);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        obj->execute();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("true\n", print);
}

TEST(ExecuteTestCmd, BracketsNoFlag)  {
    string temp = "[ tests/test.cpp ]";
    bool flag;
    string print;

    TestCmd* obj = new TestCmd(temp);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        obj->execute();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("true\n", print);
}

TEST(ExecuteTestCmd, BracketsNoFlagFalse)  {
    string temp = "[ tests/test1.cpp ]";
    bool flag;
    string print;

    TestCmd* obj = new TestCmd(temp);

    flag = obj->execute();

    if (flag == false) {
        print = "exec: No such file or directory\n";
    }
    else {
        testing::internal::CaptureStdout();
        obj->execute();
        print = testing::internal::GetCapturedStdout();
    }

    EXPECT_EQ("exec: No such file or directory\n", print);
}

TEST(ExecuteMultCmds, TestNoBracketsWithFlag) {
    string temp = "(echo a && test -e tests/test.cpp) || (echo c; echo d || echo e)";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;
    Base* prev;
    Base* obj;
    int counter = 0;

    parse_string(cmd, cntr, temp);

    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    testing::internal::CaptureStdout();
    flag = obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("a\ntrue\n", print);
}

TEST(ExecuteMultCmds, NestedTestAllConnectors) {
    string temp = "(((echo a || echo b) && echo c) ; echo d)";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;
    Base* prev;
    Base* obj;
    int counter = 0;

    parse_string(cmd, cntr, temp);

    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    testing::internal::CaptureStdout();
    flag = obj->execute();
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("a\nc\nd\n", print);
}

TEST(ExecuteMultCmds, MoreLeftParenthesis) {
    string temp = "((((echo a || echo b) && echo c) || echo d)";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;
    Base* prev;
    Base* obj;
    int counter = 0;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout(); 
    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    if(counter != 0) {
    	cout << "incorrect format of parenthesis" << endl;
    }
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("incorrect format of parenthesis\n", print);
}

TEST(ExecuteMultCmds, MoreRightParenthesis) {
    string temp = "((echo a || echo b) && echo c) || echo d)";
    vector<string> cmd;
    vector<char> cntr;
    string print;
    bool flag;
    Base* prev;
    Base* obj;
    int counter = 0;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    if(counter != 0) {
        cout << "incorrect format of parenthesis" << endl;
    }
    print = testing::internal::GetCapturedStdout();

    EXPECT_EQ("incorrect format of parenthesis\n", print);
}

TEST(GetFlag, PassEFlag) {
    string flag = "-e tests/test.cpp";
    
    TestCmd* obj = new TestCmd(flag);

    EXPECT_EQ("e flag", obj->get_flag());
}

TEST(GetFlag, PassFFlag) {
    string flag = "-f tests/test.cpp";

    TestCmd* obj = new TestCmd(flag);

    EXPECT_EQ("f flag", obj->get_flag());
}  

TEST(GetFlag, PassDFlag) {
    string flag = "-d tests/test.cpp";

    TestCmd* obj = new TestCmd(flag);

    EXPECT_EQ("d flag", obj->get_flag());
}

TEST(GetFlag, PassNoFlag) {
    string flag = "tests/test.cpp";

    TestCmd* obj = new TestCmd(flag);

    EXPECT_EQ("no flag", obj->get_flag());
}

TEST(ParseFunc, RedirectAndPipe) {
    string temp = "cat < text | tr a-z A-Z | tee text 2 | tr A-Z a-z > text3";
    vector<string> cmd;
    vector <char> cntr;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
        for (unsigned i=0; i < cntr.size(); ++i) {
            cout << cntr.at(i) << endl;
        }
    std:string print = testing::internal::GetCapturedStdout();
    EXPECT_EQ("<\np\np\np\n>\n", print);
}

TEST(RedirectionTest, TestInputRedirect) {
    string temp = "cat < text";
    vector<string> cmd;
    vector <char> cntr;
    bool flag;
    Base* prev;
    int counter = 0;

    parse_string(cmd, cntr, temp);

    Base* obj = double_command(prev, cmd, cntr, flag, counter);

    testing::internal::CaptureStdout();
   
        obj->execute(); 
    
    std:string print = testing::internal::GetCapturedStdout();
      
   EXPECT_EQ("Hello\n", print);
    
} 

TEST(RedirectionTest, TestPipe) {
    string temp = "cat < text | tr a-z A-Z";
    vector<string> cmd;
    vector <char> cntr;
    bool flag;
    Base* prev;
    int counter = 0;
    Base* obj;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }
    obj->execute();
    std:string print = testing::internal::GetCapturedStdout();

   EXPECT_EQ("HELLO\n", print);
}

TEST(RedirectionTest, TestDOutRedirect) {
    string temp = "echo World >> text";
    vector<string> cmd;
    vector <char> cntr;
    bool flag;
    Base* prev;
    int counter = 0;
    Base* obj;
    ifstream fin;
    string s;

    parse_string(cmd, cntr, temp);

    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }

    obj->execute();

    testing::internal::CaptureStdout();

    fin.open("text");
    
    while(fin) {
       getline(fin, s);
       cout << s;
    }

    fin.close();    

    std:string print = testing::internal::GetCapturedStdout();

   EXPECT_EQ("HelloWorld", print);
}

TEST(RedirectionTest, TestOutRedirect) {
    string temp = "echo Hello > text";
    vector<string> cmd;
    vector <char> cntr;
    bool flag;
    Base* prev;
    int counter = 0;
    Base* obj;
    ifstream fin;
    string s;

    parse_string(cmd, cntr, temp);

    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }

    obj->execute();

    testing::internal::CaptureStdout();

    fin.open("text");

    while(fin) {
       getline(fin, s);
       cout << s;
    }

    fin.close();

    std:string print = testing::internal::GetCapturedStdout();

   EXPECT_EQ("Hello", print);
}

/*TEST(RedirectionTest, TestDoublePipe) {
    string temp = "cat < text1 | tr a-z A-Z | tee text2 | tr A-Z a-z > text2";
    vector<string> cmd;
    vector <char> cntr;
    bool flag;
    Base* prev;
    int counter = 0;
    Base* obj;
    ifstream fin;
    string s;

    parse_string(cmd, cntr, temp);

    testing::internal::CaptureStdout();
    while (!cmd.empty()) {
        obj = double_command(prev, cmd, cntr, flag, counter);
    }

    obj->execute();     

    fin.open("text2");

    while(fin) {
        getline(fin, s);
        cout << s;
    }
    
    fin.close();

    std:string print = testing::internal::GetCapturedStdout();

   EXPECT_EQ("HELLO WORLD\nhello world", print);
}*/


int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
