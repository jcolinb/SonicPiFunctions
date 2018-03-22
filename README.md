# SonicPiFunctions
A set of custom functions for Sonic Pi.

## Sampl

Takes a single string as an argument and returns a Sampl object (note: not a proper ruby object!).
The string names a .wav file in a directory named 'Samples' located in the same directory as current session.
The returned object has two properties stored in a hash: [:sam] and [:dur].
[:dur] is set automatically to [:sam]'s length, but can be reset to tune.
This function is for one-shot samples, primarily to be used with Sequencr.
For loops or multi-beat samples use Loop.

usage:
```
snare drum = Sampl 'Snare'
detuned_snare = snare
detuned_snare[:dur] = 2

```
