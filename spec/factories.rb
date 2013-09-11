FactoryGirl.define do
  factory :author do
    name 'James T. Kirk'
    email 'kirkjt@starfleet.org'
    password 'acaptainiam321'
    phone '9996661212'
  end

  factory :post do
    title 'Going boldly'
    content 'Exploring new worlds'
    association :author
  end
end
