require 'test_helper'

class TraficoControllerTest < ActionController::TestCase
  test "should get actualizarexpediente" do
    get :actualizarexpediente
    assert_response :success
  end

end
