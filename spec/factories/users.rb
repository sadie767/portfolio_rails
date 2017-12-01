FactoryBot.define do
  factory :user do
    user_name('unicorn')
    admin(false)
    email('unicorn@unicorn.com')
    password('123456')
  end
end
