class FrequencyUpdater
  attr_reader :first_duplicate_frequency

  def initialize(frequency)
    @frequencies_reached = [frequency]
    @first_duplicate_frequency = nil
  end

  def frequency
    @frequencies_reached.last
  end

  def adjust_with(frequency_changes)
    changes = frequency_changes.split("\n").map(&:to_i)
    changes.each { |change| apply_change(change) }
  end

  def adjust_until_duplicate_with(frequency_changes)
    adjust_with(frequency_changes) until @first_duplicate_frequency
  end

  private

  def apply_change(change)
    new_frequency = frequency + change

    duplicate_frequency = @frequencies_reached.include?(new_frequency)
    first_duplicate = @first_duplicate_frequency.nil?
    @first_duplicate_frequency = new_frequency if duplicate_frequency && first_duplicate

    @frequencies_reached << new_frequency
  end
end
