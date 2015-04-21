/*
SC_Score class. Modify PsendReceive ans SendTags Class.


*earlab team*
- Iannis Zannos
- Dakis Trentos
- Omer Chatziserif
- Aris Bezas
- Vaggelis Tsatsis
- Alexandros Aggelakis


*/

Dests { classvar <>addr1, <>addr2, <>addr3;
	*initClass {
		StartUp.add{
			// Error messages to Post window when I am sending to IP that doesn't exist.
			addr1 = NetAddr("localhost", 57120);
			//addr2 = NetAddr("192.127.0.3", 57130);
			//addr3 = NetAddr("192.127.0.4", 57140);
		}
	}
}

SC_Score {
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