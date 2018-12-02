require './frequency_updater'

frequency_changes = File.read("../input.txt")
starting_frequency = 0

updater1 = FrequencyUpdater.new(starting_frequency)
updater1.adjust_with(frequency_changes)
puts updater1.frequency

updater2 = FrequencyUpdater.new(starting_frequency)
updater2.adjust_until_duplicate_with(frequency_changes)

puts updater2.first_duplicate_frequency
