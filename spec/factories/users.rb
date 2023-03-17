# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.username }
    password { Faker::Internet.password }
  end
end
