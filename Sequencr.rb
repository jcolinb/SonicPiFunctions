define :Sequencr do |seq,sam|
    sample sam[:sam],amp:seq[:seq].tick,beat_stretch:sam[:dur],sustain:sam[:dur]
    sleep seq[:res]
end
