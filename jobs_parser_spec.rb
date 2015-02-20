require_relative 'jobs_parser'
require_relative 'task_runner'
require_relative 'job'

describe 'JobsParser' do 
  subject{ JobsParser.new(jobs_string).parse }

  context 'no jobs' do
    let(:jobs_string) { '' }

    it 'returns an empty array' do
      expect(subject).to be_empty
    end
  end

  context 'single job' do 
    let(:jobs_string) { 'a => ' }

    it '' do
      expect(subject).to include(Job.new('a'))
    end
  end
end