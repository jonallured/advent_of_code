require './corruption_checksum'

describe CorruptionChecksum do
  describe "compute" do
    it "returns the checksum" do
      spreadsheet = <<-END
5 1 9 5
7 5 3
2 4 6 8
      END
      checksum = CorruptionChecksum.compute(spreadsheet)
      expect(checksum).to eq 18
    end
  end

  describe "modulo_sums" do
    it "sums even divisions" do
      spreadsheet = <<-END
5 9 2 8
9 4 7 3
3 8 6 5
      END
      checksum = CorruptionChecksum.modulo_sums(spreadsheet)
      expect(checksum).to eq 9
    end
  end
end
