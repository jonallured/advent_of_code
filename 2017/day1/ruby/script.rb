require './inverse_captcha'

input = File.read("../input.txt")
output = InverseCaptcha.sum(input.to_i)
puts output

output_two = InverseCaptcha.sum(input.to_i, offset: 2)
puts output_two
