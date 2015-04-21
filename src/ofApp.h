/*
 * Copyright (c) 2012 Dan Wilcox <danomatika@gmail.com>
 *
 * BSD Simplified License.
 * For information on usage and redistribution, and for a DISCLAIMER OF ALL
 * WARRANTIES, see the file, "LICENSE.txt," in this distribution.
 *
 * See https://github.com/danomatika/ofxLua for documentation
 *
 */
#pragma once

#include "ofMain.h"

#include "ofxLua.h"
#include "ofxOsc.h"
#define HOST "localhost"
#define NUM_MSG_STRINGS 20


//#include "MyCode.h"

// declare the module bindings
extern "C" {
    int luaopen_my(lua_State* L);
}

class ofApp : public ofBaseApp, ofxLuaListener {

	public:

    
		// main
		void setup();
		void update();
		void draw();
		void exit();
		
		// input
		void keyPressed(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		
		// ofxLua error callback
		void errorReceived(string& msg);
		
		// a bunch of api tests
		void runTests();
		
		// script control
		void reloadScript();
		void nextScript();
		void prevScript();
		
		ofxLua lua;
		vector<string> scripts;
		int currentScript;
    void runScript(int scriptID);
    
    ofxOscReceiver receiver;
    ofxOscSender	luaSender;
    
    int current_msg_string;
    string msg_strings[NUM_MSG_STRINGS];
    float timers[NUM_MSG_STRINGS];
    string scriptDirectory;
    int scriptID;
    
    int beat();
    int beatNum;
    int meter();
    int meterNum;
    
    float mlab[100];
    float amp();
    float amplitude;
    float freq();
    float frequency;
    bool onset();
    bool onsetBool;
    
    //******************//
    //****** Other *****//
    
    float midiNote;
    float note();
    ofCamera cam;
    
    
    //****** Shaders ****//
    //*******************//
    ofShader shader;
    bool doShader;
    
};
