require 'test_helper'

class RecruitmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recruitment = recruitments(:one)
  end

  test "should get index" do
    get recruitments_url
    assert_response :success
  end

  test "should get new" do
    get new_recruitment_url
    assert_response :success
  end

  test "should create recruitment" do
    assert_difference('Recruitment.count') do
      post recruitments_url, params: { recruitment: { content: @recruitment.content, title: @recruitment.title, user_id: @recruitment.user_id } }
    end

    assert_redirected_to recruitment_url(Recruitment.last)
  end

  test "should show recruitment" do
    get recruitment_url(@recruitment)
    assert_response :success
  end

  test "should get edit" do
    get edit_recruitment_url(@recruitment)
    assert_response :success
  end

  test "should update recruitment" do
    patch recruitment_url(@recruitment), params: { recruitment: { content: @recruitment.content, title: @recruitment.title, user_id: @recruitment.user_id } }
    assert_redirected_to recruitment_url(@recruitment)
  end

  test "should destroy recruitment" do
    assert_difference('Recruitment.count', -1) do
      delete recruitment_url(@recruitment)
    end

    assert_redirected_to recruitments_url
  end
end
