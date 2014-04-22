require 'test_helper'

class NoteSetsControllerTest < ActionController::TestCase
  setup do
    @note_set = note_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:note_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create note_set" do
    assert_difference('NoteSet.count') do
      post :create, note_set: { dateadded: @note_set.dateadded, description: @note_set.description, title: @note_set.title }
    end

    assert_redirected_to note_set_path(assigns(:note_set))
  end

  test "should show note_set" do
    get :show, id: @note_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @note_set
    assert_response :success
  end

  test "should update note_set" do
    patch :update, id: @note_set, note_set: { dateadded: @note_set.dateadded, description: @note_set.description, title: @note_set.title }
    assert_redirected_to note_set_path(assigns(:note_set))
  end

  test "should destroy note_set" do
    assert_difference('NoteSet.count', -1) do
      delete :destroy, id: @note_set
    end

    assert_redirected_to note_sets_path
  end
end
