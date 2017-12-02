require 'rails_helper'

describe Project do
  it { should belong_to :cv}

  it 'will create a new Project' do
    project = FactoryBot.create(:project)
    project.url.should eq ('www.myproject.com')
  end
end
