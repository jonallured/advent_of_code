class ImsBox
  def initialize(id)
    @characters = id.downcase.split('')
  end

  def contains_two?
    grouped_characters.values.map(&:length).include? 2
  end

  def contains_three?
    grouped_characters.values.map(&:length).include? 3
  end

  private

  def grouped_characters
    @grouped_characters ||= @characters.group_by { |character| character }
  end
end

class ImsChecksum
  def self.compute(box_ids)
    boxes = box_ids.split("\n").map(&ImsBox.method(:new))
    count_of_twos = boxes.select(&:contains_two?).count
    count_of_threes = boxes.select(&:contains_three?).count
    count_of_twos * count_of_threes
  end
end
