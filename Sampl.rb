define :Sampl do |sample|
  target = {}
  target[:sam] = "~/Junglism/Samples/#{sample}.wav"
  target[:dur] = sample_duration target[:sam]
  return target
end

#tests
#HH = Sampl 'HH'
#puts HH[:sam]
#puts HH[':dur']
