SynthDef(\square, { |amp= 0.5, freq = 60, t_gate = 1|
	var sig;
	sig = Pulse.ar(freq, 0.25, amp);
	sig = sig * EnvGen.kr(Env.perc(0.01, 1), t_gate);
	sig = FreeVerb.ar(sig, 0.6, 0.4);
	Out.ar(0, Pan2.ar(sig,0))
}).store

a = Synth(\square)
a.set(\t_gate, 1);

SynthDef(\sine, { |amp = 0.5, freq = 440|
	var data = SinOsc.ar(freq, 0, amp);
	Out.ar(0, data ! 2);
}).store;


// Example 1
(
SynthDef(\feedbacky, {| freq = 60, amp = 1, t_gate = 1, envDur = 1, reverb = 0.6 |
	var sig;
	sig = SinOscFB.ar(freq.midicps, SinOsc.ar(1).range(0,1),amp);
	sig = sig * EnvGen.kr(Env.perc(0.0, envDur), t_gate);
	sig = FreeVerb.ar(sig, reverb, 0.4);
	Out.ar(0, Pan2.ar(sig));
}).add
)

//test
Synth(\feedbacky)

// Example 2
(
SynthDef(\dots, {| freq = 60, amp = 1, t_gate = 1, envDur = 1, reverb = 0.6 |
	var sig;
	sig = SinOsc.ar(freq.midicps, 0,amp);
	sig = sig * EnvGen.kr(Env.perc(0.01, envDur), t_gate);
	sig = FreeVerb.ar(sig, reverb, 0.6);
	Out.ar(0, Pan2.ar(sig));
}).add
)

//test
Synth(\dots)

// Example 3
(
SynthDef(\cloud, {| freq = 100, density = 30, amp = 0.2, pan = 0, reverb = 0.6, step = 1.3 , decay = 0.4|
	var sig, exciter;
	exciter = PinkNoise.ar(mul: amp);
	sig = DynKlank.ar(`[ Array.geom(8,freq,step),nil, {decay}!8], exciter);
	sig = FreeVerb.ar(sig, reverb, 0.6);
	Out.ar(0, Pan2.ar(sig * amp));
}).add
)

//test
Synth(\cloud)


s.killAll