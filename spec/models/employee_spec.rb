require 'rails_helper'

describe Employee do
  it { should have_many :blogs}
  it { should have_many :projects}
  it { should have_many :schools}
  it { should have_many :jobs}

  it 'will create a new Portfolio' do
    portfolio = FactoryBot.create(:employee)
    portfolio.name.should eq ('Me')
  end
end
