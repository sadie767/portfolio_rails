require 'rails_helper'

describe Job do
  it { should belong_to :employees}

  it 'will create new Job' do
    job = FactoryBot.create(:job)
    job.name.should eq ('Server')
    job.date_start.should eq ('01/01/01')
    job.date_end.should eq ('01/01/11')
    job.description.should eq ('I waited tables')
  end
end
