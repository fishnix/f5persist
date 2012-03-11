require 'test_helper'

class F5PersistListsControllerTest < ActionController::TestCase
  setup do
    @f5_persist_list = f5_persist_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f5_persist_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f5_persist_list" do
    assert_difference('F5PersistList.count') do
      post :create, f5_persist_list: @f5_persist_list.attributes
    end

    assert_redirected_to f5_persist_list_path(assigns(:f5_persist_list))
  end

  test "should show f5_persist_list" do
    get :show, id: @f5_persist_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f5_persist_list
    assert_response :success
  end

  test "should update f5_persist_list" do
    put :update, id: @f5_persist_list, f5_persist_list: @f5_persist_list.attributes
    assert_redirected_to f5_persist_list_path(assigns(:f5_persist_list))
  end

  test "should destroy f5_persist_list" do
    assert_difference('F5PersistList.count', -1) do
      delete :destroy, id: @f5_persist_list
    end

    assert_redirected_to f5_persist_lists_path
  end
end
