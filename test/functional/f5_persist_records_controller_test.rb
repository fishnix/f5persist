require 'test_helper'

class F5PersistRecordsControllerTest < ActionController::TestCase
  setup do
    @f5_persist_record = f5_persist_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f5_persist_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f5_persist_record" do
    assert_difference('F5PersistRecord.count') do
      post :create, f5_persist_record: @f5_persist_record.attributes
    end

    assert_redirected_to f5_persist_record_path(assigns(:f5_persist_record))
  end

  test "should show f5_persist_record" do
    get :show, id: @f5_persist_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f5_persist_record
    assert_response :success
  end

  test "should update f5_persist_record" do
    put :update, id: @f5_persist_record, f5_persist_record: @f5_persist_record.attributes
    assert_redirected_to f5_persist_record_path(assigns(:f5_persist_record))
  end

  test "should destroy f5_persist_record" do
    assert_difference('F5PersistRecord.count', -1) do
      delete :destroy, id: @f5_persist_record
    end

    assert_redirected_to f5_persist_records_path
  end
end
