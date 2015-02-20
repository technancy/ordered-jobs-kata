require_relative 'job'

describe 'Job' do 
  describe "#<=>" do
    let(:job1) { Job.new('a')}
    let(:job2) { Job.new('a')}

    context 'instance different and value same' do
      it 'returns true' do
        expect(job1).to eq(job2)
      end
    end

    context 'instance different and value different' do
      let(:job2) { Job.new('b')}

      it 'returns false' do
        expect(job1).not_to eq(job2)
      end
    end
  end
end