/*
Score Class Implementation

Aris Bezas 12:05 AM Feb 28, 2013
*/

Score_Definition {
	*initClass {
		StartUp add: {
			this.defineRespTags;
			this.track_1;
			this.track_2;
			"\n* Score_Class_Implementation_is_waiting\n".postln;
		}
	}
	*defineRespTags {
		~track_1 = RespTags.do('/track_1', 1, nil);
		~track_1 = RespTags.do('/track_2', 2, nil);
	}

	//========================================================================//
	//========================================================================//

	*track_1{
		~track_1_Resp.remove;
		~track_1_Resp = OSCresponderNode(
			nil,
			'Load_track_1_actions',
			{ |t,r,msg|
				"Load_track_1_actions...".postln;
				~track_1_Resp_0.action = {
					"meter: ".post; ~meter.postln;
					OF.writeString("12","meter: "+~meter,200,~meter*15,255,255,255,255);	//	("takis", X, Y, R, G, B, A);
					"bit: 1".postln;
					~meter = ~meter + 1;
				};
				~saviperf_00_0_Resp_1.action = {
					"bit: 2".postln;
				};
				~saviperf_00_0_Resp_2.action = {
					"bit: 3".postln;
				};
				~saviperf_00_0_Resp_3.action = {
					"bit: 4".postln;
				};
		}).add;
	}

	//========================================================================//
	//========================================================================//

	*track_2{
		//Let's start play some stuff

		~track_2_Resp.remove;
		~track_2_Resp = OSCresponderNode(
			nil,
			'Load_track_2_actions',
			{ |t,r,msg|
				"Load_saviperf_00_1_actions...".postln;
				~meter = 1;
				OF.background(255,255,255,55);
				~track_2_Resp_0.action = {
					"meter: ".post; ~meter.postln;
					"bit: 1".postln;
					if(~meter == 2, ~batuhan.set(\amp,1));
					if(~meter == 3,{150.do{|i|	OF.sinEq(i, 10*i, 0, 0, 1, 0, 0.01)}});
					if(~meter == 4,{150.do{|i|	OF.sinEq(i, 10*i, 0, 1, 1, 0, 0.01)}});
					if(~meter == 5,{150.do{|i|	OF.sinEq(i, 10*i, 0, 10, 1, 0, 0.01)}});
					if(~meter == 6,{150.do{|i|	OF.sinEq(i, 10*i, 0, 100, 1, 0, 0.01)}});
					if(~meter == 7,{150.do{|i|	OF.sinEq(i, 10*i, 0, 200, 1, 0, 0.01)}});
					if(~meter == 8,{150.do{|i|	OF.sinEq(i, 10*i, 0, 300, 1, 0, 0.01)}});
					if(~meter == 9,{150.do{|i|	OF.sinEq(i, 10*i, 0, 400, 1, 0, 0.01)}});
					~meter = ~meter + 1;
				};
				~track_2_Resp_1.action = {
					"bit: 2".postln;
				};
				~track_2_Resp_2.action = {
					"bit: 3".postln;
				};
				~track_2_Resp_3.action = {
					"bit: 4".postln;
				};
				~track_2_Resp_4.action = {
					"bit: 5".postln;
				};

		}).add;
	}

}


Score_Definition_Implementation{
	*load {
		"Load stuff for track_1".postln;
		Dests.addr1.sendMsg('Load_track_1_actions');

		"Load stuff for track_2".postln;
		Dests.addr1.sendMsg('Load_track_2_actions');
	}
	*play_track_1 {
		~meter = 1;
		~playTrack_1 = SC_Score.new;
		~playTrack_1.dests = [Dests.addr1];
		~playTrack_1.title = '/Track_1';
		~playTrack_1.tags = (1..4);
		~playTrack_1.step = [1, 1, 1, 1]/1;
		~playTrack_1.loop;
	}
	*play_track_2 {
		~meter = 1;
		~playTrack_2 = SC_Score.new;
		~playTrack_2.dests = [Dests.addr1];
		~playTrack_2.title = '/Track_2';
		~playTrack_2.tags = (1..5);
		~playTrack_2.step = [1, 1, 1, 1, 1]/1;
		~playTrack_2.loop;
	}
}


