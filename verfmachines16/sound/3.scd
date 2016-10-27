(
{SinOsc.ar([100,105],0,0.5)}.play;
{SinOsc.ar([200,205],0,0.5)}.play;
{SinOsc.ar([300,305],0,0.5)}.play;
)

(
a={SinOsc.ar([100,105],0,0.5)}.play;
b={SinOsc.ar([200,205],0,0.5)}.play;
c={SinOsc.ar([300,305],0,0.5)}.play;
)

(
d={SinOsc.ar([60.rrand(600),60.rrand(600)],0,0.2)}.play;
e={SinOsc.ar([60.rrand(600),60.rrand(600)],0,0.2)}.play;
f={SinOsc.ar([60.rrand(600),60.rrand(600)],0,0.2)}.play;
)
//stop a sound
(
a.free;
b.free;
c.free;
)

(
d.free;
e.free;
f.free;
)

{SinOsc.ar([300,305],0,0.5)}.plot;


(
g ={SinOsc.kr([2,3],0,10,400)};
{SinOsc.ar(g,0,0.2)}.play;
)
//0.5 * 0.5 * 05 blijft altijd tussen de 0 en 1
(
{
g =SinOsc.kr([2,3],0,10,400);
h =SinOsc.kr(1.0.rand,0,0.5,0.5)*
   SinOsc.kr(1.0.rand,0,0.5,0.5)*
   SinOsc.kr(1.0.rand,0,0.5,0.5);
SinOsc.ar(g,0,h/10)}.play;
)

//variabelen - 1-letterige variabelen zijn globaal
//do not use s;
a=1;
b=2.2;
c="hello";
d=[10.20.30.40];
e=('name': 'ria','age': 58);
e.lastname = 'stroes';
e;

//globale
~supercollider;
//variabele processing alleen geldig in de region
(
var processing = "p5";
processing;
~supercollider;
)