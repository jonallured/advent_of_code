require './ims_checksum'

box_ids = File.read("../input.txt")
checksum = ImsChecksum.compute(box_ids)

puts checksum
