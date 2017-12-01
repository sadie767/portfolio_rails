FactoryBot.define do
  factory :job do
    name('Server')
    date_start('01/01/01')
    date_end('01/01/11')
    description('I waited tables')
  end
end
