/*
This contains all the classes that Algodynamic Score definition.

---- Example ----
~myScore = Score_Implementation.load
~playTrack_1 = Proxy_Pattern_Score.new;
~playTrack_1.dests = [Dests.addr1];
~playTrack_1.title = '/track_1';
~playTrack_1.tags = (1..4);
~playTrack_1.step = [1, 1, 1, 1]/1;
~playTrack_1.loop;
Score_Implementation.goToTrack(2)
Score_Implementation.goToTrack(1)


~myScoreDefinition = Score_Definition
~myScoreDefinition.removeAllResps
~myScoreDefinition.track_1
~myScoreDefinition.define_Track_1_Resps


OSCFunc.trace(true)
OSCFunc.trace(false)
Aris Bezas 12:05 AM Feb 28, 2013
*/

Score_Definition {
	*initClass {
		StartUp add: {
			~meter=0;
			~activateChange = false;
			this.define_Track_1_Resps;
			this.track_1;
			"\n* Algorithmic Dynamic Score Definition is ready to start".postln;
		}
	}
	*removeAllResps {
		~track_1_Resp_1 = RespTags.do('/track_1', 1, nil);~track_1_Resp_2 = RespTags.do('/track_1', 2, nil);
		~track_1_Resp_3 = RespTags.do('/track_1', 3, nil);~track_1_Resp_4 = RespTags.do('/track_1', 4, nil);
	}
	*define_Track_1_Resps {
		~track_1_Resp_1 = RespTags.do('/track_1', 1, nil);
		~track_1_Resp_2 = RespTags.do('/track_1', 2, nil);
		~track_1_Resp_3 = RespTags.do('/track_1', 3, nil);
		~track_1_Resp_4 = RespTags.do('/track_1', 4, nil);

	}
	*remove_Track_1_Resps {
		//~track_1_Resp.remove;
		~track_1_Resp_1.removeResp;
		~track_1_Resp_2.removeResp;
		~track_1_Resp_3.removeResp;
		~track_1_Resp_4.removeResp;
	}
	*track_1{
		~track_1_Resp = OSCresponderNode(
			nil,
			'Load_track_1_actions',
			{ |t,r,msg|
				"Load_track_1_actions...".postln;
				~track_1_Resp_1.action = {
					"\ntrack_1:meter: ".post; ~meter.postln;
					"beat: 1".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",1.0);
					case
					// { ~meter == 0 }  { "pop".postln}
					// { ~meter == 1 }  { "pop".postln}
					// { ~meter == 2 }  { Dests.addr1.sendMsg("test")}
					// { ~meter == 2 }  { \wrong }
					// { ~meter == 3 } { \wrong }
					// { ~meter == 4 } { \wrong }
					// { ~meter == 5 }   { \wrong }
					 { ~meter == 6 }   { \true };
					~meter = ~meter + 1;
				};
				~track_1_Resp_2.action = {
					"beat: 2".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",2.0);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 2 } { \wrong }
					    { ~meter == 3 } { \wrong }
					    { ~meter == 4 } { \wrong }
					    { ~meter == 5 }   { \wrong }
					    { ~meter == 6 }   { \true };
				};
				~track_1_Resp_3.action = {
					"beat: 3".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",3.0);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 2 } { \wrong }
					    { ~meter == 3 } { \wrong }
					    { ~meter == 4 } { \wrong }
					    { ~meter == 5 }   { \wrong }
					    { ~meter == 6 }   { \true };
				};
				~track_1_Resp_4.action = {
					"beat: 4".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",4.0);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 2 } { \wrong }
					    { ~meter == 3 } { \wrong }
					    { ~meter == 4 } { \wrong }
					    { ~meter == 5 }   { \wrong }
					    { ~meter == 6 }   { \true };
				};
		}).add;
	}
}

