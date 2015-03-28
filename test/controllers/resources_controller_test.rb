require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources)
  end

  test "should get new" do
    sign_in User.first
    get :new
    assert_response :success
  end

  test "should create resource" do
    sign_in User.first
    assert_difference('Resource.count') do
      post :create, resource: { category_id: @resource.category_id, link: (@resource.link + '/created'), notes: @resource.notes, title: (@resource.title + 'created') }
    end

    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "should get edit" do
    sign_in User.first
    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    sign_in User.first
    patch :update, id: @resource, resource: { category_id: @resource.category_id, link: @resource.link, notes: @resource.notes, title: @resource.title }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    sign_in User.first
    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to resources_path
  end
end
