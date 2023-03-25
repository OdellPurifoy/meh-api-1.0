# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Lounges', type: :request do
  describe 'GET /index' do
    context 'when there are no lounges returned' do
      it 'returns http success' do
        get '/lounges'
        expect(response).to have_http_status(200)
      end
    end

    context 'when there are lounges returned' do
      let!(:user) { FactoryBot.create(:user) }
      let!(:test_lounge) { FactoryBot.create(:lounge, user: user) }

      it 'returns a non empty array of lounges' do
        get '/lounges'

        response_json = JSON.parse(response.body).deep_symbolize_keys

        expect(response_json[:status][:data][:lounges][:data]).not_to be_empty
        expect(response).to have_http_status(200)
      end
    end
  end
end
