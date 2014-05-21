# This will guess the User class
FactoryGirl.define do
  factory :forum, class: 'Forum::Forum' do
    name        "Rails Forum"
  end

  factory :thread, class: 'Forum::Thread' do
    association :forum, factory: :forum

    subject     'some subject'
  end


  factory :post, class: 'Forum::Post' do
    subject     'some subject'
    body        'some body'
  end

end