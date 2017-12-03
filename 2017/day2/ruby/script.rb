require './corruption_checksum'

input = File.read("../input.txt")
output = CorruptionChecksum.compute(input)
puts output
