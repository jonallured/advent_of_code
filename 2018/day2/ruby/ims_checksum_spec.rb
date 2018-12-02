require './ims_checksum'

describe ImsBox do
  describe "#contains_two?" do
    it "returns false when the id contains exactly one A" do
      box = ImsBox.new("Abcdef")
      expect(box.contains_two?).to eq false
    end

    it "returns true when the id contains exactly two As" do
      box = ImsBox.new("AAbcde")
      expect(box.contains_two?).to eq true
    end

    it "returns false when the id contains exactly three As" do
      box = ImsBox.new("AAAbcd")
      expect(box.contains_two?).to eq false
    end

    it "returns true when the id contains exactly two As and Bs" do
      box = ImsBox.new("AABBcd")
      expect(box.contains_two?).to eq true
    end

    it "returns true when the id contains exactly two As, Bs and Cs" do
      box = ImsBox.new("AABBCC")
      expect(box.contains_two?).to eq true
    end
  end

  describe "#contains_three?" do
    it "returns false when the id contains exactly two As" do
      box = ImsBox.new("AAbcde")
      expect(box.contains_three?).to eq false
    end

    it "returns true when the id contains exactly three As" do
      box = ImsBox.new("AAAbcd")
      expect(box.contains_three?).to eq true
    end

    it "returns false when the id contains exactly four As" do
      box = ImsBox.new("AAAAbc")
      expect(box.contains_three?).to eq false
    end
  end
end

describe ImsChecksum do
  it "matches the example" do
    box_ids = "abcdef\nbababc\nabbcde\nabcccd\naabcdd\nabcdee\nababab\n"
    expect(ImsChecksum.compute(box_ids)).to eq(12)
  end
end
