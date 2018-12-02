class FrequencyUpdater
  def initialize(frequency)
    @frequency = frequency
  end

  def adjust_with(frequency_changes)
    change_sum = frequency_changes.split("\n").map(&:to_i).sum
    @frequency += change_sum
    @frequency
  end
end
