require_relative 'task_runner'
require_relative 'job'

describe 'TaskRunner' do
  
  describe "#add" do
    subject{ TaskRunner.new.add(job) }
    let(:job) { Job.new('a') }

    it 'adds a job to itself' do
      expect(subject).to include(job)
    end
  end
end