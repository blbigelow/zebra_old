require 'test_helper'

class DiscussionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discussions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discussion" do
    assert_difference('Discussion.count') do
      post :create, :discussion => { }
    end

    assert_redirected_to discussion_path(assigns(:discussion))
  end

  test "should show discussion" do
    get :show, :id => discussions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => discussions(:one).to_param
    assert_response :success
  end

  test "should update discussion" do
    put :update, :id => discussions(:one).to_param, :discussion => { }
    assert_redirected_to discussion_path(assigns(:discussion))
  end

  test "should destroy discussion" do
    assert_difference('Discussion.count', -1) do
      delete :destroy, :id => discussions(:one).to_param
    end

    assert_redirected_to discussions_path
  end
end
