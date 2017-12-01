require './inverse_captcha'

input = File.read("input.txt")
output = InverseCaptcha.sum(input.to_i)
puts output
