define :Loopr do |loop,dur=nil|
  if dur == nil
    dur = loop[:dur]
  end
  sample loop[:sam],amp:2,beat_stretch:dur,sustain:dur
  sleep dur  
end
