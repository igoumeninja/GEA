#pragma once

#include "ofMain.h"

float myFunction(float aNumber) {
    return aNumber+1;
}

class MyCoolClass {
public:
    
    MyCoolClass() {
        myFloat = 0;
        myInt = 0;
        aString = "hello world";
    }
    MyCoolClass(float aNumber) {
        myFloat = aNumber;
        myInt = (int) aNumber;
        aString = "foo bar";
    }
    
    // member function
    void doSomething() {
        ofLog() << "did something: " << aString;
    }
    
    // getter/setter
    void setInt(int newInt) {myInt = newInt;}
    int getInt() {return myInt;}
    
    // member variable, read/write
    string aString;
    
protected:
    
    // some protected member variables, won't be wrapped
    float myFloat;
    int myInt;
};