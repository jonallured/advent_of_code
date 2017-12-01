class InverseCaptcha
  def self.sum(input, offset: 0)
    new(input, offset).sum
  end

  def initialize(input, offset)
    @numbers = input.to_s.scan(/\d/).map(&:to_i)
    @steps = offset == 0 ? 1 : @numbers.length / offset
  end

  def sum
    matching_numbers.sum
  end

  private

  def matching_numbers
    @numbers.each_with_index.map do |n, index|
      next_index = index + @steps
      next_index = next_index - @numbers.length if next_index >= @numbers.length
      next_item = next_index == @numbers.length ? @numbers.first : @numbers[next_index]
      n == next_item ? n : 0
    end
  end
end
