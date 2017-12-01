require 'rails_helper'

describe School do
  it { should belong_to :employee}

  it 'will create a new School' do
    school = FactoryBot.create(:school)

    school.name.should eq ('MyU')
    school.date_start.should eq ('01/01/01')
    school.date_end.should eq ('01/01/05')
    school.major.should eq ('BA')
  end
end
