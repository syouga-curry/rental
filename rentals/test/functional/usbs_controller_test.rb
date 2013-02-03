require 'test_helper'

class UsbsControllerTest < ActionController::TestCase
  setup do
    @usb = usbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usb" do
    assert_difference('Usb.count') do
      post :create, usb: { fabaid: @usb.fabaid, type: @usb.type }
    end

    assert_redirected_to usb_path(assigns(:usb))
  end

  test "should show usb" do
    get :show, id: @usb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usb
    assert_response :success
  end

  test "should update usb" do
    put :update, id: @usb, usb: { fabaid: @usb.fabaid, type: @usb.type }
    assert_redirected_to usb_path(assigns(:usb))
  end

  test "should destroy usb" do
    assert_difference('Usb.count', -1) do
      delete :destroy, id: @usb
    end

    assert_redirected_to usbs_path
  end
end
