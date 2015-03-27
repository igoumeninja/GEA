//
//  MyCode.h
//  gea_swig
//
//  Created by Aris Bezas on 3/27/15.
//
//

#ifndef gea_swig_MyCode_h
#define gea_swig_MyCode_h

float myFunction(float aNumber);

class MyCoolClass {
public:
    
    MyCoolClass();
    MyCoolClass(float aNumber);
    
    // member function
    void doSomething();
    
    // getter/setter
    void setInt(int newInt);
    int getInt();
    
    // member variable, read/write
    string aString;
};

#endif

