require 'test_helper'

class ApplicationsControllerTest < ActionController::TestCase
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post :create, application: { city: @application.city, cover_letter: @application.cover_letter, email: @application.email, first_name: @application.first_name, last_name: @application.last_name, opt_in: @application.opt_in, resume: @application.resume, state: @application.state }
    end

    assert_redirected_to application_path(assigns(:application))
  end

  test "should show application" do
    get :show, id: @application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @application
    assert_response :success
  end

  test "should update application" do
    patch :update, id: @application, application: { city: @application.city, cover_letter: @application.cover_letter, email: @application.email, first_name: @application.first_name, last_name: @application.last_name, opt_in: @application.opt_in, resume: @application.resume, state: @application.state }
    assert_redirected_to application_path(assigns(:application))
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete :destroy, id: @application
    end

    assert_redirected_to applications_path
  end
end
