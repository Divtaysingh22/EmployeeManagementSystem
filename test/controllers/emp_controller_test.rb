require 'test_helper'

class EmpControllerTest < ActionDispatch::IntegrationTest
  test "should get employee" do
    get emp_employee_url
    assert_response :success
  end

  test "should get project" do
    get emp_project_url
    assert_response :success
  end

  test "should get department" do
    get emp_department_url
    assert_response :success
  end

  test "should get contact" do
    get emp_contact_url
    assert_response :success
  end

end
