/*
Ο TimeServer καθορίζει την χρονική δομή και περιέχει πληροφορίες σχετικά με αυτή.
Αναλυτικότερα έχει τις παρακάτω αρμοδιότητες:

- καθορίζει την τιμή των bangs/min (bpm)
- μετράει τα bangs απο την αρχή που άρχισε να τρέχει
- μετράει τα bangs απο την τελευταία αλλαγή του tempo
- μετράει τον χρόνο που πέρασε απο την αρχή άρχισε να τρέχει
- μετράει τον χρόνο που πέρασε απο την τελευταία αλλαγή
- καθορίζει δομές επανάληψεις, παράδειγμα για τον καθορισμό επαναληπτικής δομής 4 βημάτων, στέλνει μηνύματα με το bpm στη σειρα bang1, bang2, bang3, bang4, bang1, bang2, bang3, bang4, bang1 ....
- δυνατότητα αλλαγής bpm
- δυνατότητα αλλαγής δομής επανάληψης

*/

TimeServer {
	var <>num=0, <>tags, <>step=0.25, <>title, <>stepPat, <>tagPat, task, verbose = true;
	var  <>dests, <>tag, <>tagStream, <>stepStream, <>stp2, <>x, <>times = inf;
	*initClass {
		StartUp.add{
			"Time Server at Services"
		}
	}
	loop {

		bangPat     = PatternProxy(Pseq([nil], inf));
		stepPat     = PatternProxy(Pseq([nil], inf));
		bangStream  = bangPat.asStream;
		stepStream  = stepPat.asStream;
		task = Task({
			times.do{
				bangPat.source  = Pseq(bangs, inf);
				stepPat.source = Pseq(step, inf);
				num = bangs.numChannels; // count the beats
				num.do{
					x = bangStream.next;
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
}
