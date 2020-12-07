require 'test_helper'

class TwittersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twitter = twitters(:one)
  end

  test "should get index" do
    get twitters_url, as: :json
    assert_response :success
  end

  test "should create twitter" do
    assert_difference('Twitter.count') do
      post twitters_url, params: { twitter: { desc: @twitter.desc, tilte: @twitter.tilte } }, as: :json
    end

    assert_response 201
  end

  test "should show twitter" do
    get twitter_url(@twitter), as: :json
    assert_response :success
  end

  test "should update twitter" do
    patch twitter_url(@twitter), params: { twitter: { desc: @twitter.desc, tilte: @twitter.tilte } }, as: :json
    assert_response 200
  end

  test "should destroy twitter" do
    assert_difference('Twitter.count', -1) do
      delete twitter_url(@twitter), as: :json
    end

    assert_response 204
  end
end
