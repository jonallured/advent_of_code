class CorruptionChecksum
  def self.compute(input)
    rows = input.split("\n").map { |row| row.split.map(&:to_i) }
    diffs = rows.map { |row| row.max - row.min }
    diffs.sum
  end

  def self.modulo_sums(input)
    rows = input.split("\n").map { |row| row.split.map(&:to_i) }
    comboses = rows.map { |row| row.sort.reverse.combination(2) }

    results = comboses.map do |combos|
      combos.map { |n, d| n % d == 0 ? n/d : nil }.compact.first
    end

    results.sum
  end
end
