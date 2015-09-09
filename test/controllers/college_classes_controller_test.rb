require 'test_helper'

class CollegeClassesControllerTest < ActionController::TestCase
  setup do
    @college_class = college_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_class" do
    assert_difference('CollegeClass.count') do
      post :create, college_class: { department: @college_class.department, name: @college_class.name, number: @college_class.number, units: @college_class.units }
    end

    assert_redirected_to college_class_path(assigns(:college_class))
  end

  test "should show college_class" do
    get :show, id: @college_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_class
    assert_response :success
  end

  test "should update college_class" do
    patch :update, id: @college_class, college_class: { department: @college_class.department, name: @college_class.name, number: @college_class.number, units: @college_class.units }
    assert_redirected_to college_class_path(assigns(:college_class))
  end

  test "should destroy college_class" do
    assert_difference('CollegeClass.count', -1) do
      delete :destroy, id: @college_class
    end

    assert_redirected_to college_classes_path
  end
end
