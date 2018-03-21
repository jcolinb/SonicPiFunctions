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


define :MakeUsSampls do |*sams|
  sampls = []
  sams.each do |sam|
    sampls.push(Sampl sam)      
  end
  return sampls
end

define :SeqGen do |steps,res,*nom|
  ss = []
  seqs = []
  steps.times {ss.push(0)}
  nom.each do |nom|
    nom += 'seq'
    nomlit = nom
    nom = Sequenc ss,res
    seqs.push(nom)    
    puts nomlit + " = #{nom[:seq]}  res: #{nom[:res]}"
  end
  return seqs
end

hat,snare = SeqGen 16,0.25,'HH','Snare'
puts snare
hh,snare = MakeUsSampls 'HH','Snare'
puts hh
puts snare
hatz = Sampl 'HH'
#hatseq = Sequenc [1,1,2,1],0.25
#snar = Sampl 'Snare'
#snarseq = Sequenc [0,1,0,1],0.5
#puts hatz
#puts hatseq
#live_loop :hatman do
#Sequencr hatseq,hatz
#end
#live_loop :snar do
#Sequencr snarseq,snar
#end
