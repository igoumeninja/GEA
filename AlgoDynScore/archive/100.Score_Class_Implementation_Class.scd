/*
Score_Class Implementation


Score_Definition_Implementation.load
~playTrack_1 = SC_Score.new;
~playTrack_1.dests = [Dests.addr1];
~playTrack_1.title = '/track_1';
~playTrack_1.tags = (1..4);
~playTrack_1.step = [1, 1, 1, 1]/1;
~playTrack_1.loop;
Score_Definition_Implementation.goToTrack(2)
Score_Definition_Implementation.goToTrack(1)


Aris Bezas 12:05 AM Feb 28, 2013
*/

Score_Definition {
	*initClass {
		StartUp add: {
			this.define_Track_1_Resps;
			this.define_Track_2_Resps;
			this.track_1;
			this.track_2;
			~activateChange = false;
			"\n* Score_Class_Implementation_is_waiting\n".postln;
		}
	}
	*removeAllResps {
		~track_1_Resp_1 = RespTags.do('/track_1', 1, nil);~track_1_Resp_2 = RespTags.do('/track_1', 2, nil);
		~track_1_Resp_3 = RespTags.do('/track_1', 3, nil);~track_1_Resp_4 = RespTags.do('/track_1', 4, nil);

		~track_2_Resp_1 = RespTags.do('/track_2', 1, nil);~track_2_Resp_2 = RespTags.do('/track_2', 2, nil);
		~track_2_Resp_3 = RespTags.do('/track_2', 3, nil);~track_2_Resp_4 = RespTags.do('/track_2', 4, nil);
		~track_2_Resp_5 = RespTags.do('/track_2', 5, nil);
	}

	*define_Track_1_Resps {
		~track_1_Resp_1 = RespTags.do('/track_1', 1, nil);
		~track_1_Resp_2 = RespTags.do('/track_1', 2, nil);
		~track_1_Resp_3 = RespTags.do('/track_1', 3, nil);
		~track_1_Resp_4 = RespTags.do('/track_1', 4, nil);

	}
	*define_Track_2_Resps {

		~track_2_Resp_1 = RespTags.do('/track_2', 1, nil);
		~track_2_Resp_2 = RespTags.do('/track_2', 2, nil);
		~track_2_Resp_3 = RespTags.do('/track_2', 3, nil);
		~track_2_Resp_4 = RespTags.do('/track_2', 4, nil);
		~track_2_Resp_5 = RespTags.do('/track_2', 5, nil);
	}

	*remove_Track_1_Resps {
		//~track_1_Resp.remove;
		~track_1_Resp_1.removeResp;
		~track_1_Resp_2.removeResp;
		~track_1_Resp_3.removeResp;
		~track_1_Resp_4.removeResp;
	}

	*remove_Track_2_Resps {
		~track_2_Resp_1.removeResp;
		~track_2_Resp_2.removeResp;
		~track_2_Resp_3.removeResp;
		~track_2_Resp_4.removeResp;
		~track_2_Resp_5.removeResp;
	}
	*track_1{
		~track_1_Resp = OSCresponderNode(
			nil,
			'Load_track_1_actions',
			{ |t,r,msg|
				"Load_track_1_actions...".postln;
				~track_1_Resp_1.action = {
					if (~activateChange == true, {
						Score_Definition_Implementation.activateChange;
						},
						{
							"\ntrack_1:meter: ".post; ~meter.postln;
							"bit: 1".postln;
							~meter = ~meter + 1;
					})
				};
				~track_1_Resp_2.action = {
					"bit: 2".postln;
				};
				~track_1_Resp_3.action = {
					"bit: 3".postln;
				};
				~track_1_Resp_4.action = {
					"bit: 4".postln;
				};
		}).add;
	}

	*track_2{
		~track_2_Resp = OSCresponderNode(
			nil,
			'Load_track_2_actions',
			{ |t,r,msg|
				"Load_track_2_actions...".postln;
				~meter = 1;
				~track_2_Resp_1.action = {
					if (~activateChange == true, {
						Score_Definition_Implementation.activateChange;
						},
						{
							"\ntrack_2:meter: ".post; ~meter.postln;
							"bit: 1".postln;
							OF.interactWithSketch("activateSC", 0);
							~meter = ~meter + 1;
					})
				};
				~track_2_Resp_2.action = {
					"bit: 2".postln;
				};
				~track_2_Resp_3.action = {
					"bit: 3".postln;
				};
				~track_2_Resp_4.action = {
					"bit: 4".postln;
				};
				~track_2_Resp_5.action = {
					"bit: 5".postln;
				};
		}).add;
	}
}


Score_Definition_Implementation{
	*load {
		Dests.addr1.sendMsg('Load_track_1_actions');
		Dests.addr1.sendMsg('Load_track_2_actions');
	}
	*goToTrack { |track|
		~activateChange = true;
		switch ( track,
			1, {~nextTrack = 1},
			2, {~nextTrack = 2},
			3, {~nextTrack = 3},
		);
		//this.activateChange;
	}
	*activateChange {
		switch (~nextTrack,
			1, {
				//Score_Definition.removeAllResps;
				//Score_Definition.define_Track_1_Resps;
				this.play_track_1;
				~playTrack_2.stop;
				~playTrack_1.loop;
			},
			2, {
				//Score_Definition.removeAllResps;
				//Score_Definition.define_Track_2_Resps;
				~playTrack_1.stop;
				this.play_track_2;
				~playTrack_2.loop;
			},
			~activateChange = false;
		)
	}

	*play_track_1 {
		//Score_Definition.define_Track_1_Resps;
		~meter = 1;
		~playTrack_1 = SC_Score.new;
		~playTrack_1.dests = [Dests.addr1];
		~playTrack_1.title = '/track_1';
		~playTrack_1.tags = (1..4);
		~playTrack_1.step = [1, 1, 1, 1]/1;
		~playTrack_1.stop;
	}
	*play_track_2 {
		//Score_Definition.define_Track_2_Resps;
		~meter = 1;
		~playTrack_2 = SC_Score.new;
		~playTrack_2.dests = [Dests.addr1];
		~playTrack_2.title = '/track_2';
		~playTrack_2.tags = (1..5);
		~playTrack_2.step = [1, 1, 1, 1, 1]/1;
		~playTrack_2.stop;
	}
}


