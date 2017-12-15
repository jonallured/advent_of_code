require './frame'

class FrameMaster
  def self.steps_for(input)
    return 0 if input == 1
    frames = (0..Float::INFINITY).lazy.map(&Frame.method(:new))
    frame = frames.detect { |frame| frame.include?(input) }
    corner_offset = frame.offset_for(input)
    frame.corner_steps - corner_offset
  end
end
