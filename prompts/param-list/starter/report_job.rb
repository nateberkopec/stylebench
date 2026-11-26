require "date"

class ReportJob
  def initialize(start_date, end_date, format, include_archived, timezone, email, compress)
    @start_date = start_date
    @end_date = end_date
    @format = format
    @include_archived = include_archived
    @timezone = timezone
    @email = email
    @compress = compress
  end

  def filename
    name = "report-#{@start_date.iso8601}-#{@end_date.iso8601}.#{@format}"
    @compress ? "#{name}.gz" : name
  end

  def description
    scope = @include_archived ? "all records" : "active records"
    delivery = @email ? "emailed to #{@email}" : "saved to disk"
    "#{scope} from #{@start_date} to #{@end_date} (#{@timezone}), #{delivery}"
  end
end

monthly = ReportJob.new(Date.new(2026, 1, 1), Date.new(2026, 1, 31), :csv, false, "UTC", "ops@example.com", true)
quarterly = ReportJob.new(Date.new(2026, 1, 1), Date.new(2026, 3, 31), :pdf, true, "America/Chicago", nil, false)
puts monthly.filename, monthly.description
puts quarterly.filename, quarterly.description
