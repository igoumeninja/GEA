/*
Prepering PhD presentation

Technic 1

   1. Eλευθερία αυτοσχεδιασμού με:
      1. live coding μέσω διερμηνευτική γλώσσας (interpreted language)
      2. Δημιουργία και ρύθμιση γραφικών synthesizers - modules σε πραγματικό χρόνο
      3. άλλες διεπαφές


Aris Bezas 12:05 AM Feb 28, 2013
*/

//1.live coding μέσω διερμηνευτική γλώσσας (interpreted language)
OF.background(255,255,255,15);
OF.rect(0,0,200,200,255,0,0,255)
OF.line(0,0,200,200,255,0,0,255)
(
{
	inf.do{|i|
		5.do{OF.rect(500.rand2,~height.rand2,20,20,255,0,0,255)};
		0.005.wait;
	};
}.fork
)

RECTANGLES
----------
(
OF.background(0,0,0,15);
{
	var count=0;
	inf.do{|i|
		count=count+1;
		OF.rect(30*count, 0, 2,~height);
		OF.rect(~width-(30*count), 0, 2,~height);
		OF.rect(0, 30*count, ~width,2);
		OF.rect(0, ~height-(30*count), ~width,2);
		0.02.wait;
		if(count>(~width/60), {count=0; OF.rect(0,0,~width, ~height)});
	};
}.fork
)

//2. Δημιουργία και ρύθμιση γραφικών synthesizers - modules σε πραγματικό χρόνο

SIN EQUATIONS
-------------
OF.background(255,255,255,15);
OF.sinEq(0, 300, 420, 200, 2, 0, 0.09); // OF.sinEq(id,xPos,yPos,amp,wave_lenght,phase,speed);
OF.sinEq(1, 300, 420, 200, 2, 1, 0.004999); // OF.sinEq(id,xPos,yPos,amp,wave_lenght,phase,speed);
OF.sinEq("remove",0);
(
{
	150.do{|i|
		OF.sinEq(i, 300, 420, 250, 2, 1, 0.005+(i*0.00001));
		0.04.wait;
	};
}.fork
)
250.do{|i|OF.sinEq("remove",240-i)}

//3. άλλες διεπαφές
(
    c = CCResponder({ |src,chan,num,value|
        [src,chan,num,value].postln;
        },
        nil, // any source
        nil, // any channel
        nil, // any CC number
        nil // any value
    )
)

