class CorruptionChecksum
  def self.compute(input)
    rows = input.split("\n").map { |row| row.split.map(&:to_i) }
    diffs = rows.map { |row| row.max - row.min }
    diffs.sum
  end
end
