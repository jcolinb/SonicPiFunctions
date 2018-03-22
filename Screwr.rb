define :Screwr do |loop|
  a=0
  z=loop[:dur]
  pieces=[0.125,0.25,0.5,0.75]
  start=[0,0.25,0.5,0.75]
    until a >= z
      top=start.choose
      length=pieces.choose
      sample "#{loop[:sam]}",amp:2,beat_stretch:loop[:dur],start:top,sustain:length
      sleep length
      a+=length
    end
end
