require './frequency_updater'

describe FrequencyUpdater do
  describe "#adjust_with" do
    it "matches the first example" do
      changes = "+1\n+1\n+1"
      updater = FrequencyUpdater.new(0)
      updater.adjust_with(changes)
      expect(updater.frequency).to eq(3)
    end

    it "matches the second example" do
      changes = "+1\n+1\n-2"
      updater = FrequencyUpdater.new(0)
      updater.adjust_with(changes)
      expect(updater.frequency).to eq(0)
    end

    it "matches the third example" do
      changes = "-1\n-2\n-3"
      updater = FrequencyUpdater.new(0)
      updater.adjust_with(changes)
      expect(updater.frequency).to eq(-6)
    end
  end

  describe "#adjust_until_duplicate_with" do
    it "matches the first example" do
      changes = "+1\n-1"
      updater = FrequencyUpdater.new(0)
      updater.adjust_until_duplicate_with(changes)
      expect(updater.first_duplicate_frequency).to eq(0)
    end

    it "matches the second example" do
      changes = "+3\n+3\n+4\n-2\n-4"
      updater = FrequencyUpdater.new(0)
      updater.adjust_until_duplicate_with(changes)
      expect(updater.first_duplicate_frequency).to eq(10)
    end

    it "matches the third example" do
      changes = "-6\n+3\n+8\n+5\n-6"
      updater = FrequencyUpdater.new(0)
      updater.adjust_until_duplicate_with(changes)
      expect(updater.first_duplicate_frequency).to eq(5)
    end

    it "matches the fourth example" do
      changes = "+7\n+7\n-2\n-7\n-4"
      updater = FrequencyUpdater.new(0)
      updater.adjust_until_duplicate_with(changes)
      expect(updater.first_duplicate_frequency).to eq(14)
    end
  end
end
