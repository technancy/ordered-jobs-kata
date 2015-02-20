class JobsParser

  def initialize(unparsed_jobs)
    @unparsed_jobs = unparsed_jobs
  end

  def parse
    TaskRunner.new
  end
end