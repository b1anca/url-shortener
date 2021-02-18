require "test_helper"

class UrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url = urls(:one)
    # a = @url.bijective_encode(@url.id)
    # puts 't', a
    # puts 't', @url.bijective_decode(a)
  end

  test "should get index" do
    get urls_url, as: :json
    assert_response :success
  end

  test "should create url" do
    assert_difference('Url.count') do
      post urls_url, params: { url: { origin: @url.origin } }, as: :json
      # @url.should('asd
      # expect(response).to be_success
      json = ActiveSupport::JSON.decode  response.body
      puts @url.bijective_decode(json['shortened']), @url.id
      # expect(decoded_response['shortened']).to @url.shortened
    end

    assert_response 201
  end

  test "should show url" do
    get url_url(@url), as: :json
    assert_response :success
  end

  test "should update url" do
    patch url_url(@url), params: { url: { origin: @url.origin, shortened: @url.shortened } }, as: :json
    assert_response 200
  end

  test "should destroy url" do
    assert_difference('Url.count', -1) do
      delete url_url(@url), as: :json
    end

    assert_response 204
  end
end
