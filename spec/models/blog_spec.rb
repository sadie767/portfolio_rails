require 'rails_helper'

describe Blog do
  it { should belong_to :employee}

  it 'will create new Blog' do
    blog = FactoryBot.create(:blog)
    blog.title.should eq ('Monday')
    blog.description.should eq ('I watched a movie.')

  end
end
