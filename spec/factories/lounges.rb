# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :lounge do
    name  { Faker::Company.name }
    email { Faker::Internet.email }
    description { Faker::Lorem.sentence(word_count: 100) }
    phone { Faker::PhoneNumber.cell_phone } #=> "(186)285-7925"
    user
  end
end
