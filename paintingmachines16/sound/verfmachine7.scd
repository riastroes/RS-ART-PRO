
//amp van -8pi tot 8pi
//freq
SynthDef(\dots, { |amp = 0.5, freq = 440|
	var data = SinOsc.ar(freq, 1, amp);
	Out.ar(0, data ! 2);
}).store;

SynthDef(\dots1, { |amp = 0.5, freq = 440|
	var e = Env.linen(0.01,0.05,0.03,0.2);

	var data = SinOsc.ar(freq, 0, EnvGen.kr(e, doneAction:0.5));
	Out.ar(0, data);
}).store;

SynthDef(\lines, { |amp = 0.5, freq = 440|
	var data = SinOsc.ar(freq, 0, amp);
	Out.ar(1, data ! 2);
}).store;
SynthDef(\dots2, { |outbus = 0, freq = 440, pan = 0, on = 1, amp = 0.1, delay = 0.2, lag = 0|
	var data;
	freq = Lag.kr(freq, lag);
	data = SinOsc.ar(freq * TRand.kr(0.99, 1.01, on));
	data = data.softclip(0.2);
	data = data * AmpComp.kr(freq, 300, 0.5) * amp * on;
	data = Pan2.ar(data, pan);
	data = data + CombN.ar(data, 0.2, Rand(0.1, 0.2), 2.0, delay);
	Out.ar(outbus, data);
}).store;


