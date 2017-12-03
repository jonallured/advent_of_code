require './corruption_checksum'

describe CorruptionChecksum do
  it "something" do
    spreadsheet = <<-END
5 1 9 5
7 5 3
2 4 6 8
    END
    checksum = CorruptionChecksum.compute(spreadsheet)
    expect(checksum).to eq 18
  end
end
