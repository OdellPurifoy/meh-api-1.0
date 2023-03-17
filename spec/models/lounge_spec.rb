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
  describe 'Database columns' do
    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:phone).of_type(:string) }
    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_index([:user_id]) }
  end
end
