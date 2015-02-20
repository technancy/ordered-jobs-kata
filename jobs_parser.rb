class JobsParser

  def initialize(unparsed_jobs)
    @unparsed_jobs = unparsed_jobs
  end

  def parse
    tasks.add(Job.new(split))

    tasks
  end

  def split
    @unparsed_jobs.split(' => ').first
  end

  private

  def tasks
    @tasks ||= TaskRunner.new
  end
end
