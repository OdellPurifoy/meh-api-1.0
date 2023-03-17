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
require 'rails_helper'

RSpec.describe Lounge, type: :model do
end
