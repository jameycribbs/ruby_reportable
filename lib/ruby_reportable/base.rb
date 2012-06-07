module RubyReportable
  @@reports = {}

  def self.define(name, &block)
    @@reports[name] = RubyReportable::Report.new(name).instance_eval(&block)
  end

  def self.reports
    @@reports
  end
end

