require 'forwardable'
class TaskRunner
  extend Forwardable

  def_delegator :jobs, :include?

  def empty?
    true
  end

  def add(job)
    jobs << job ##['a']

    self
  end

  private

  def jobs
    @jobs ||= []
  end
end