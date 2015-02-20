class Job
  include Comparable

  def initialize(letter)
    @letter = letter
  end

  def <=>(another_job)
    letter <=> another_job.letter
  end

  protected

  def letter
    @letter
  end
end