# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    include RackSessionsFix
    # before_action :configure_sign_up_params, only: [:create]
    # before_action :configure_account_update_params, only: [:update]
    respond_to :json

    private

    def respond_with(current_user, _opts = {})
      if resource.persisted?
        render json: {
          status: { code: 200, message: 'Signed up Successfully.' },
          data: UserSerializer.new(current_user).serializable_hash[:data][:attributes]
        }
      else
        render json: {
          status: { message: "User couldn't be created. #{current_user.errors.full_messages.to_sentence}" }, status: :unprocessable_entity
        }
      end
    end
  end
end
