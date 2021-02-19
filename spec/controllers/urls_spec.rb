require 'rails_helper'

RSpec.describe 'Urls', type: :request do
  let(:result) { ActiveSupport::JSON.decode response.body }

  describe 'GET /urls' do
    let!(:urls) { create_list(:url, 10) }
    let(:sorted_urls) { urls.sort { |a, b| b['clicks'] <=> a['clicks'] } }

    before { get '/urls' }

    it 'list urls ordered by clicks' do
      expect(response).to have_http_status(:ok)
      expect(result.first['clicks']).to eq(sorted_urls.first.clicks)
    end
  end

  describe 'POST /urls' do
    let(:url) { Url.take }

    before { post '/urls', params: { url: { origin: 'google.com' } } }

    it 'creates url with slug' do
      expect(response).to have_http_status(201)
      expect(result['shortened']).to_not be_nil
      expect(result['id']).to eq(url.bijective_decode(url.shortened))
    end
  end
end
