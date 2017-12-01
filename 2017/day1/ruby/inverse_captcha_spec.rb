require './inverse_captcha'

describe InverseCaptcha do
  it "adds digits that match neighbors" do
    sum = InverseCaptcha.sum(1122)
    expect(sum).to eq 3
  end

  it "keeps matching neighbors" do
    sum = InverseCaptcha.sum(1111)
    expect(sum).to eq 4
  end

  it "returns zero with no matches" do
    sum = InverseCaptcha.sum(1234)
    expect(sum).to eq 0
  end

  it "matches wraps around" do
    sum = InverseCaptcha.sum(91212129)
    expect(sum).to eq 9
  end
end
