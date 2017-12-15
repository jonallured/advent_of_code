require './frame'

describe Frame do
  describe "includes?" do
    it "returns false when the position is below the frame" do
      frame = Frame.new(1)
      expect(frame).to_not include(1)
    end

    it "returns false when the position is above the frame" do
      frame = Frame.new(1)
      expect(frame).to_not include(10)
    end

    it "returns true when the position is first inside the frame" do
      frame = Frame.new(1)
      expect(frame).to include(2)
    end

    it "returns true when the position is last inside the frame" do
      frame = Frame.new(1)
      expect(frame).to include(9)
    end

    it "returns true when the position is in the middle of a higher frame" do
      frame = Frame.new(2)
      expect(frame).to include(17)
    end
  end

  describe "offset_for" do
    it "returns 0 for corners" do
      frame = Frame.new(2)
      expect(frame.offset_for(13)).to eq(0)
    end

    it "returns 1 when snaping to a lower corner" do
      frame = Frame.new(2)
      expect(frame.offset_for(14)).to eq(1)
    end

    it "returns 1 when snaping to a higher corner" do
      frame = Frame.new(2)
      expect(frame.offset_for(12)).to eq(1)
    end

    it "returns layer number for middles" do
      frame = Frame.new(2)
      expect(frame.offset_for(15)).to eq(frame.layer)
    end
  end
end

describe "corner_steps" do
  it "returns 2 times the layer number" do
    frame = Frame.new(2)
    expect(frame.corner_steps).to eq(4)
  end
end
