require './corruption_checksum'

input = File.read("../input.txt")
puts CorruptionChecksum.compute(input)

puts CorruptionChecksum.modulo_sums(input)
