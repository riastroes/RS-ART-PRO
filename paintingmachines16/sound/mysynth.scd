(
SynthDef('mySynth1',{
	arg freq;
	var sound = SinOsc.ar(freq, mul:0.02);
	var linen = Env.linen(0.5, sustainTime:1,releaseTime:0.5);
	var env = EnvGen.kr(linen,doneAction:3);
	Out.ar(0, sound * env);
}).add;

SynthDef('mySynth2',{
	arg freq;
	var sound = SinOsc.ar(freq, mul:0.02);
	var linen = Env.linen(0.03, sustainTime:0.05
		,releaseTime:0.03);
	var env = EnvGen.kr(linen,doneAction:3);
	Out.ar(1, sound * env);
}).add;


OSCdef('listener1',{
	arg msg;
	Synth('mySynth1',[freq1:msg[1]*400+60]);
},"/paint");
OSCdef('listener2',{
	arg msg;
	Synth('mySynth1',[freq:msg[1]*800+60]);
},"/lines");


OSCdef('listener3',{
	arg msg;
	Synth('mySynth2',[freq:msg[1]*600+60]);
},"/dots");
)
//test
Synth('mySynth1',[freq:50.rrand(600)]);