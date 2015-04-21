/*
Create an algodynamic score for ICLC performance.

Run the following line one-by-one to play the algodyn score:

~iclc = Proxy_Pattern_Score.new;
~iclc.dests = [Dests.addr1, Dests.addr2];
~iclc.title = '/track_1';
~iclc.tags = (1..5);
~iclc.step = [1, 1, 1, 1, 1]/1;
Dests.addr1.sendMsg('Load_track_1_actions');
~iclc.loop;
~iclc.stop;

Aris Bezas 22:17 AM Feb 22, 2015
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
		~track_1_Resp_5 = RespTags.do('/track_1', 5, nil);
	}
	*define_Track_1_Resps {
		~track_1_Resp_1 = RespTags.do('/track_1', 1, nil);
		~track_1_Resp_2 = RespTags.do('/track_1', 2, nil);
		~track_1_Resp_3 = RespTags.do('/track_1', 3, nil);
		~track_1_Resp_4 = RespTags.do('/track_1', 4, nil);
		~track_1_Resp_5 = RespTags.do('/track_1', 5, nil);

	}
	*remove_Track_1_Resps {
		~track_1_Resp_1.removeResp;
		~track_1_Resp_2.removeResp;
		~track_1_Resp_3.removeResp;
		~track_1_Resp_4.removeResp;
		~track_1_Resp_5.removeResp;
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
					Dests.addr2.sendMsg("/meter",~meter);
					Dests.addr2.sendMsg("/beat",1);
					case
					 { ~meter == 0 }  { Dests.addr1.sendMsg("meter/0")}
					 { ~meter == 6 }   { \true };
					~meter = ~meter + 1;
				};
				~track_1_Resp_2.action = {
					"beat: 2".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",2);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 6 }   { \true };
				};
				~track_1_Resp_3.action = {
					"beat: 3".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",3);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 6 }   { \true };
				};
				~track_1_Resp_4.action = {
					"beat: 4".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",4);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 6 }   { \true };
				};
				~track_1_Resp_5.action = {
					"beat: 5".postln;
					NetAddr("127.0.0.1" ,12345).sendMsg("/beat",5);
					case
					    { ~meter == 1 }   { \no }
					    { ~meter == 6 }   { \true };
				};
		}).add;
	}
}

