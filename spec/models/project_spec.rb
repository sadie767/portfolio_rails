require 'rails_helper'

describe Project do
  it { should belong_to :employee}

  it 'will create a new Project' do
    project = FactoryBot.create(:project)
    project.url.should eq ('www.myproject.com')
  end
end
