require 'test_helper'

class InfluencersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @influencer = influencers(:one)
  end

  test "should get index" do
    get influencers_url
    assert_response :success
  end

  test "should get new" do
    get new_influencer_url
    assert_response :success
  end

  test "should create influencer" do
    assert_difference('Influencer.count') do
      post influencers_url, params: { influencer: { created_at: @influencer.created_at, external_created_at: @influencer.external_created_at, follower_count: @influencer.follower_count, handle: @influencer.handle, id: @influencer.id, updated_at: @influencer.updated_at } }
    end

    assert_redirected_to influencer_url(Influencer.last)
  end

  test "should show influencer" do
    get influencer_url(@influencer)
    assert_response :success
  end

  test "should get edit" do
    get edit_influencer_url(@influencer)
    assert_response :success
  end

  test "should update influencer" do
    patch influencer_url(@influencer), params: { influencer: { created_at: @influencer.created_at, external_created_at: @influencer.external_created_at, follower_count: @influencer.follower_count, handle: @influencer.handle, id: @influencer.id, updated_at: @influencer.updated_at } }
    assert_redirected_to influencer_url(@influencer)
  end

  test "should destroy influencer" do
    assert_difference('Influencer.count', -1) do
      delete influencer_url(@influencer)
    end

    assert_redirected_to influencers_url
  end
end
