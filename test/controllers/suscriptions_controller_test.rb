require 'test_helper'

class SuscriptionsControllerTest < ActionController::TestCase
  setup do
    @suscription = suscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suscription" do
    assert_difference('Suscription.count') do
      post :create, suscription: { create: @suscription.create, destroy: @suscription.destroy }
    end

    assert_redirected_to suscription_path(assigns(:suscription))
  end

  test "should show suscription" do
    get :show, id: @suscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suscription
    assert_response :success
  end

  test "should update suscription" do
    patch :update, id: @suscription, suscription: { create: @suscription.create, destroy: @suscription.destroy }
    assert_redirected_to suscription_path(assigns(:suscription))
  end

  test "should destroy suscription" do
    assert_difference('Suscription.count', -1) do
      delete :destroy, id: @suscription
    end

    assert_redirected_to suscriptions_path
  end
end
