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
class Lounge < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :phone
  validates :description, length: { maximum: 1000, too_long: '%<count>s character is the maximum allowed' }
end
