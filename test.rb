define :Sequenc do |seq,res|
  target = {}
  target[:seq] = seq.ring
  target[:res] = res
  return target
end

define :Sequencr do |seq,sam|
    sample sam[:sam],amp:seq[:seq].tick,sustain:sam[:dur]
    sleep seq[:res]
end

define :Sampl do |sample|
  target = {}
  target[:sam] = "~/Junglism/Samples/#{sample}.wav"
  target[:dur] = sample_duration target[:sam]
  return target
end

hatz = Sampl 'HH'
hatseq = Sequenc [1,1,2,1],0.25
snar = Sampl 'Snare'
snarseq = Sequenc [0,1,0,1],0.5
puts hatz
puts hatseq
live_loop :hatman do
Sequencr hatseq,hatz
end
live_loop :snar do
Sequencr snarseq,snar
end
