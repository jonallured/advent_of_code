require './inverse_captcha'

describe InverseCaptcha do
  context "without an offset" do
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

  context "with an offset" do
    it "something" do
      sum = InverseCaptcha.sum(1212, offset: 2)
      expect(sum).to eq 6
    end

    it "something" do
      sum = InverseCaptcha.sum(1221, offset: 2)
      expect(sum).to eq 0
    end

    it "something" do
      sum = InverseCaptcha.sum(123425, offset: 2)
      expect(sum).to eq 4
    end

    it "something" do
      sum = InverseCaptcha.sum(123123, offset: 2)
      expect(sum).to eq 12
    end

    it "something" do
      sum = InverseCaptcha.sum(12131415, offset: 2)
      expect(sum).to eq 4
    end
  end
end
