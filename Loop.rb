define :Loop do |loop,bts|
  target = {}
  target[:sam] = "~/Junglism/Samples/#{loop}.wav"
  target[:dur] = bts
  return target  
end
