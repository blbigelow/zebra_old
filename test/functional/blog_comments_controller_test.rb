require 'test_helper'

class BlogCommentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_comments" do
    assert_difference('BlogComments.count') do
      post :create, :blog_comments => { }
    end

    assert_redirected_to blog_comments_path(assigns(:blog_comments))
  end

  test "should show blog_comments" do
    get :show, :id => blog_comments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => blog_comments(:one).to_param
    assert_response :success
  end

  test "should update blog_comments" do
    put :update, :id => blog_comments(:one).to_param, :blog_comments => { }
    assert_redirected_to blog_comments_path(assigns(:blog_comments))
  end

  test "should destroy blog_comments" do
    assert_difference('BlogComments.count', -1) do
      delete :destroy, :id => blog_comments(:one).to_param
    end

    assert_redirected_to blog_comments_path
  end
end
