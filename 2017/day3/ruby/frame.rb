class Frame
  attr_reader :layer

  def initialize(layer)
    @layer = layer
  end

  def include?(number)
    number_range.include?(number)
  end

  def offset_for(number)
    diffs = corners.map { |corner| corner - number }
    diffs.map(&:abs).sort.first
  end

  def corner_steps
    layer * 2
  end

  private

  def number_range
    @number_range ||= (first_number...next_first_number).to_a
  end

  def square_count
    layer * 8
  end

  def first_number
    next_first_number - square_count
  end

  def next_first_number
    (8 * (0..layer).to_a.sum) + 2
  end

  def corners
    [0, 1, 2, 3].map do |i|
      index = i * corner_steps
      number_range.reverse[index]
    end.reverse
  end
end
