define :MakeUsSampls do |*sams|
  sampls = []
  sams.each do |sam|
    sampls.push(Sampl sam)      
  end
  return sampls
end
