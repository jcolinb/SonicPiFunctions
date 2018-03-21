define :Sequenc do |seq,res|
  target = {}
  target[:seq] = seq.ring
  target[:res] = res
  return target
end

#tests

#HHseq = [1,1,1,1],0.25
#puts HHseq[:seq]
#puts HHseq[:res]
