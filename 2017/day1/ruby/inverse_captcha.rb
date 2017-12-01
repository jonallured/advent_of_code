class InverseCaptcha
  def self.sum(input)
    new(input).sum
  end

  def initialize(input)
    @numbers = input.to_s.scan(/\d/).map(&:to_i)
  end

  def sum
    matching_numbers.sum
  end

  private

  def matching_numbers
    @numbers.each_with_index.map do |n, index|
      next_index = index + 1
      next_item = next_index == @numbers.length ? @numbers.first : @numbers[next_index]
      n == next_item ? n : 0
    end
  end
end
