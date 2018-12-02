require './frequency_updater'

describe FrequencyUpdater do
  describe "#adjust_with" do
    it "matches the first example" do
      changes = "+1\n+1\n+1"
      updater = FrequencyUpdater.new(0)
      expect(updater.adjust_with(changes)).to eq(3)
    end

    it "matches the second example" do
      changes = "+1\n+1\n-2"
      updater = FrequencyUpdater.new(0)
      expect(updater.adjust_with(changes)).to eq(0)
    end

    it "matches the third example" do
      changes = "-1\n-2\n-3"
      updater = FrequencyUpdater.new(0)
      expect(updater.adjust_with(changes)).to eq(-6)
    end
  end
end
