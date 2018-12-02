require './frequency_updater'

frequency_changes = File.read("../input.txt")
starting_frequency = 0
updater = FrequencyUpdater.new(starting_frequency)
ending_frequency = updater.adjust_with(frequency_changes)

puts ending_frequency
