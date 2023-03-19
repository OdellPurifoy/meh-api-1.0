# frozen_string_literal: true

class LoungesController < ApplicationController
  def index
    lounges = Lounge.all

    render json: {
      status: {
        code: 200, message: 'All lounges',
        data: {
          lounges: LoungeSerializer.new(lounges).serializable_hash
        }
      }
    }, status: :ok
  end
end
