Score_Definition_Implementation.load
~playTrack_1 = SC_Score.new;
~playTrack_1.dests = [Dests.addr1];
~playTrack_1.title = '/track_1';
~playTrack_1.tags = (1..4);
~playTrack_1.tags = [1,2,3,4];//.reverse;  //scramble, reverse
~playTrack_1.step = [1, 1, 1, 1]/1;
~playTrack_1.loop;
Score_Definition_Implementation.goToTrack(2)
Score_Definition_Implementation.goToTrack(1)

OF.background(0,0,0,15);

OF.interactWithSketch("activateMouse", 0);
OF.interactWithSketch("activateSC", 0);
(
~track_1_Resp_1.action = {
	if (~activateChange == true, {
		Score_Definition_Implementation.activateChange;
		},
		{
			"\nScore_A:meter: ".post; ~meter.postln;
			"bit: 1".postln;
			OF.rect(0,0,200,200,255,0,0,255);
			OF.interactWithSketch("activateSCS", 1);
			OF.interactWithSketch("padSketchXY", 0,0);
			~meter = ~meter + 1;
	})
};
)
(
~track_1_Resp_2.action = {
	OF.rect(200,200,200,200,200,0,0,255);
	OF.interactWithSketch("padSketchXY", 400,40);
	"bit: 2".postln;
};
)
(
~track_1_Resp_3.action = {
	"bit: 3".postln;
	OF.rect(400,400,200,200,255,0,0,255);
	OF.interactWithSketch("padSketchXY", 500,700);
};
)
(
~track_1_Resp_4.action = {
	"bit: 4".postln;
	OF.rect(200,600,200,200,255,0,0,255);
	OF.interactWithSketch("padSketchXY", 30,600);
};
)

Score_Definition_Implementation.goToTrack(2)

(
~track_2_Resp_1.action = {
	if (~activateChange == true, {
		Score_Definition_Implementation.activateChange;
		},
		{
			"\nScore_B:meter: ".post; ~meter.postln;
			"bit: 1".postln;
			OF.interactWithSketch("activateSC", 1);
			{3.do{|i|OF.rect(200*i,0,200,200,200,200,200,255);0.1.wait}}.fork;
			OF.interactWithSketch("padSketchXY", 500,200);
			~meter = ~meter + 1;
	})
};
)
(
~track_2_Resp_2.action = {
	"bit: 2".postln;
	{3.do{|i|OF.rect(200*i,200,200,200,200,100,200,255);0.1.wait}}.fork;
	OF.interactWithSketch("padSketchXY", 100,100);
};
)
(
~track_2_Resp_3.action = {
	"bit: 3".postln;
	{3.do{|i|OF.rect(200*i,400,200,200,200,0,0,255);0.1.wait}}.fork;
	OF.interactWithSketch("padSketchXY", 400,700);
};
)
(
~track_2_Resp_4.action = {
	"bit: 4".postln;
	{3.do{|i|OF.rect(200*i,600,200,200,100,200,50,255);0.1.wait}}.fork;
	OF.interactWithSketch("padSketchXY", 800,0);
	if ( ~meter % 2 ==0,{{3.do{|i|OF.rect(0,200*i,200,200,200,0,0,255);0.1.wait}}.fork},{})

};
)
(
~track_2_Resp_5.action = {
	"bit: 5".postln;
	{3.do{|i|OF.rect(0,0,780,1024,200,200,200,55);0.1.wait}}.fork;
	OF.interactWithSketch("padSketchXY", 500,900);
};
)

OF.nextScript