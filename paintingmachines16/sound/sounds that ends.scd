//sound that ends

(
e=Env.linen(0.1, 1, 2, 0.2);
f = 50.rrand(400);
{SinOsc.ar([f, f+5],0,EnvGen.kr(e, doneAction:2))}.play

)

(
e=Env.linen(0.1, 0.2, 2, 0.2);
f = 8.rand * 50 + 50 + 5.0.rand;
{SinOsc.ar([f, f+5],0,EnvGen.kr(e, doneAction:2))}.play

)

//functions
f = {
	arg n, letter;
	("something" + n + letter).postln;
}

f.value(1, "a");
postln;