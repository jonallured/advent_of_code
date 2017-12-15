require './frame_master'

start = Time.now
puts FrameMaster.steps_for(347991)
puts "took #{Time.now - start} seconds to compute"
