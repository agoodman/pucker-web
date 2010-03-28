require 'test_helper'

class PiecesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piece" do
    assert_difference('Piece.count') do
      post :create, :piece => Factory.attributes_for(:piece)
    end

    assert_redirected_to piece_path(assigns(:piece))
  end

  test "should show piece" do
    get :show, :id => pieces(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => pieces(:one).to_param
    assert_response :success
  end

  test "should update piece" do
    put :update, :id => Factory(:piece).id, :piece => Factory.attributes_for(:piece)
    assert_redirected_to piece_path(assigns(:piece))
  end

  test "should destroy piece" do
    assert_difference('Piece.count', -1) do
      delete :destroy, :id => pieces(:one).to_param
    end

    assert_redirected_to pieces_path
  end
end
