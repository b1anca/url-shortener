require "rails_helper"

RSpec.describe "Urls", type: :request do
  let(:result) { ActiveSupport::JSON.decode response.body }

  describe "POST /urls" do
    let(:url) { Url.take }
     it "creates url with slug" do
        post "/urls", params: { url: { origin: 'google.com' }}
        expect(result['shortened']).to_not be_nil
        expect(result['id']).to eq(url.bijective_decode(url.shortened))
     end
  end
end
