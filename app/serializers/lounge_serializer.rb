# frozen_string_literal: true

class LoungeSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :phone, :description, :user_id

  belongs_to :user
end
