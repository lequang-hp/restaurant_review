require 'test_helper'

class ResControllerTest < ActionDispatch::IntegrationTest
  setup do
    @re = res(:one)
  end

  test "should get index" do
    get res_url
    assert_response :success
  end

  test "should get new" do
    get new_re_url
    assert_response :success
  end

  test "should create re" do
    assert_difference('Re.count') do
      post res_url, params: { re: { address: @re.address, name: @re.name } }
    end

    assert_redirected_to re_url(Re.last)
  end

  test "should show re" do
    get re_url(@re)
    assert_response :success
  end

  test "should get edit" do
    get edit_re_url(@re)
    assert_response :success
  end

  test "should update re" do
    patch re_url(@re), params: { re: { address: @re.address, name: @re.name } }
    assert_redirected_to re_url(@re)
  end

  test "should destroy re" do
    assert_difference('Re.count', -1) do
      delete re_url(@re)
    end

    assert_redirected_to res_url
  end
end
