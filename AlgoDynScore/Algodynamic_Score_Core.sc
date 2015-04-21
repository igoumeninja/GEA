/*
This contains all the classes that Algodynamic Score Core is needed.
Those, are followings:

- Score_Implementation - create the Responders
- Dests - Group the I.P. of the participants
- Proxy_Pattern_Score - Create an Proxy Pattern to fullfill (Algodynamic Score Core)
- RespTags -  Class for automate the creation of the responders

Aris Bezas 12:05 AM Feb 22, 2015
*/

Score_Implementation{
	*load {
		Dests.addr1.sendMsg('Load_track_1_actions');
		"Load_track_1_actions".postln;
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
		~playTrack_1 = Proxy_Pattern_Score.new;
		~playTrack_1.dests = [Dests.addr1];
		~playTrack_1.title = '/track_1';
		~playTrack_1.tags = (1..4);
		~playTrack_1.step = [1, 1, 1, 1]/1;
		~playTrack_1.stop;
	}
}

Dests { classvar <>addr1, <>addr2, <>addr3;
	*initClass {
		StartUp.add{
			// Error messages to Post window when I am sending to IP that doesn't exist.
			addr1 = NetAddr("localhost", 57120);
			addr2 = NetAddr("localhost", 12345);
			//addr3 = NetAddr("192.127.0.4", 57140);
		}
	}
}

Proxy_Pattern_Score {
	var <>num=0, <>tags, <>step=0.25, <>title, <>stepPat, <>tagPat, task, verbose = true;
	var  <>dests, <>tag, <>tagStream, <>stepStream, <>stp2, <>x, <>times = inf;
	loop {
		tagPat      = PatternProxy(Pseq([nil], inf));
		stepPat     = PatternProxy(Pseq([nil], inf));
		tagStream   = tagPat.asStream;
		stepStream  = stepPat.asStream;
		task = Task({
			times.do{
				tagPat.source  = Pseq(tags, inf);
				stepPat.source = Pseq(step, inf);
				num = tags.numChannels; // count the beats
				num.do{
					x = tagStream.next;
					dests do: _.sendMsg(title.asString, x); // send to all dests (\title, 1)
					stepStream.next.wait;
				}
			}
		});
		task.start;
	}
	pause {
		task.pause;
	}
	resume {
		task.resume;
	}
	reset {
		task.reset;
	}
	stop {
		task.stop;
	}
}


RespTags { var <>title, <>tag, <>action, <>responder;
	var addResp;
	*do { |title, tag, action, responder|
		^super.newCopyArgs(title, tag, action, responder).addResp;
	}
	addResp {
		responder = OSCresponderNode(nil, title.asString, {arg time, resp, msg;
			msg[1].switch( tag,
				action
			);
		}).add;
	}
	removeResp {
		responder.remove;
	}
}