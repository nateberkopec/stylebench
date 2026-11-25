class Report
  def initialize(rows)
    @rows = rows
  end

  def summary
    sleep 1
    @rows.sum { |row| row[:total] }
  end
end
