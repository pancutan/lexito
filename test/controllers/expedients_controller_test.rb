require 'test_helper'

class ExpedientsControllerTest < ActionController::TestCase
  setup do
    @expedient = expedients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expedients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expedient" do
    assert_difference('Expedient.count') do
      post :create, expedient: { abogado: @expedient.abogado, actor: @expedient.actor, caratula: @expedient.caratula, demandado: @expedient.demandado, email_abogado: @expedient.email_abogado, ibm: @expedient.ibm, indenmizacion: @expedient.indenmizacion, numero: @expedient.numero, perito_contable: @expedient.perito_contable, perito_contable_email: @expedient.perito_contable_email, perito_contable_incapacidad: @expedient.perito_contable_incapacidad, perito_contable_telefono: @expedient.perito_contable_telefono, perito_medico: @expedient.perito_medico, perito_medico_email: @expedient.perito_medico_email, perito_medico_incapacidad: @expedient.perito_medico_incapacidad, perito_medico_telefono: @expedient.perito_medico_telefono, perito_psicologico: @expedient.perito_psicologico, perito_psicologico_email: @expedient.perito_psicologico_email, perito_psicologico_incapacidad: @expedient.perito_psicologico_incapacidad, perito_psicologico_telefono: @expedient.perito_psicologico_telefono, telefono_abogado: @expedient.telefono_abogado }
    end

    assert_redirected_to expedient_path(assigns(:expedient))
  end

  test "should show expedient" do
    get :show, id: @expedient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expedient
    assert_response :success
  end

  test "should update expedient" do
    patch :update, id: @expedient, expedient: { abogado: @expedient.abogado, actor: @expedient.actor, caratula: @expedient.caratula, demandado: @expedient.demandado, email_abogado: @expedient.email_abogado, ibm: @expedient.ibm, indenmizacion: @expedient.indenmizacion, numero: @expedient.numero, perito_contable: @expedient.perito_contable, perito_contable_email: @expedient.perito_contable_email, perito_contable_incapacidad: @expedient.perito_contable_incapacidad, perito_contable_telefono: @expedient.perito_contable_telefono, perito_medico: @expedient.perito_medico, perito_medico_email: @expedient.perito_medico_email, perito_medico_incapacidad: @expedient.perito_medico_incapacidad, perito_medico_telefono: @expedient.perito_medico_telefono, perito_psicologico: @expedient.perito_psicologico, perito_psicologico_email: @expedient.perito_psicologico_email, perito_psicologico_incapacidad: @expedient.perito_psicologico_incapacidad, perito_psicologico_telefono: @expedient.perito_psicologico_telefono, telefono_abogado: @expedient.telefono_abogado }
    assert_redirected_to expedient_path(assigns(:expedient))
  end

  test "should destroy expedient" do
    assert_difference('Expedient.count', -1) do
      delete :destroy, id: @expedient
    end

    assert_redirected_to expedients_path
  end
end
