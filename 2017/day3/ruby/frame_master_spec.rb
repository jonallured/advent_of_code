require './frame_master'

describe FrameMaster do
  describe "steps_for" do
    it "returns 0 for square 1" do
      steps = FrameMaster.steps_for(1)
      expect(steps).to eq 0
    end

    it "returns 3 for square 12" do
      steps = FrameMaster.steps_for(12)
      expect(steps).to eq 3
    end

    it "returns 2 for square 23" do
      steps = FrameMaster.steps_for(23)
      expect(steps).to eq 2
    end

    it "returns 31 for square 1024" do
      steps = FrameMaster.steps_for(1024)
      expect(steps).to eq 31
    end
  end
end
