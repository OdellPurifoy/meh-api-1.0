# frozen_string_literal: true

# == Schema Information
#
# Table name: lounges
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  phone       :string           not null
#  email       :string
#  description :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
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
