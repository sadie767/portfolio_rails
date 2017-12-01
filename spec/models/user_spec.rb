require 'rails_helper'

describe User do
  it 'will create new User' do
    user = FactoryBot.create(:user)
    user.user_name.should eq ('unicorn')
    user.admin.should eq (false)
    user.email.should eq ('unicorn@unicorn.com')
    user.password.should eq ('123456')
  end
end
