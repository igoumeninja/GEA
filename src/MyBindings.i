%module my
%{
    // include any needed headers here
#include "ofMain.h"
    %}

// include custom code you want to be wrapped,
// note the '%' instead of '#' as '%include' is a SWIG
// command to wrap code in the given header
%include "MyCode.h"

// that's it, swig will handle the rest!