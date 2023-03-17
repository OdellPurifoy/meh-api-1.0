# frozen_string_literal: true

class Lounge < ApplicationRecord
  belongs_to :user

  validates_presence_of :name, :phone
  validates :description, length: { maximum: 1000, too_long: '%<count>s character is the maximum allowed' }
end
