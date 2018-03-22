define :Sampl do |sample|
  target = {}
  target[:sam] = "../Samples/#{sample}.wav"
  target[:dur] = sample_duration target[:sam]
  return target
end
