//Pattern
~pattern_1 = Pseq([5,2,3,4],1);
~stream_2 = ~pattern_1.asStream;
~stream_2.next

//Ενθυλάκωση - Nesting
~pattern_2 = Pseq([Pseq([1,2],2), Pseq([3,4],2)],1);
~stream_3 = ~pattern_2.asStream;
~stream_3.next

//Proxy
a = PatternProxy(Pseq([1, 2, 3], inf));
x = Pseq([0, 0, a], inf).asStream;
t = Task({ loop({ x.next.postln; 0.3.wait})}).play;
a.source = Pseq([55, 66, 77], inf);
a.source = Pseq([55, 66, 77], 1);
t.stop;















(
    f = { 33.rand };
    x = FuncStream(f);
    10.do({ [f.next, x.next].postln });
)


////////////////////////////////
// Pattern Study Presentation //
////////////////////////////////
Pdefn(\x, Pseq([Prand([0,1], 4), 1, 1, 1, 1]));
Pdefn(\x, Pseq([Pdefn(\y), 1,1,0,1]));
Pdefn(\y, Prand([0, 1], 4));
