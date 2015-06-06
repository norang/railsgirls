require 'test_helper'

class AbcsControllerTest < ActionController::TestCase
  setup do
    @abc = abcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abc" do
    assert_difference('Abc.count') do
      post :create, abc: { name: @abc.name, start: @abc.start, time: @abc.time }
    end

    assert_redirected_to abc_path(assigns(:abc))
  end

  test "should show abc" do
    get :show, id: @abc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abc
    assert_response :success
  end

  test "should update abc" do
    patch :update, id: @abc, abc: { name: @abc.name, start: @abc.start, time: @abc.time }
    assert_redirected_to abc_path(assigns(:abc))
  end

  test "should destroy abc" do
    assert_difference('Abc.count', -1) do
      delete :destroy, id: @abc
    end

    assert_redirected_to abcs_path
  end
end
