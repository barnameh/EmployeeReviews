require 'minitest/autorun'
require 'minitest/pride'

require_relative 'employee'

class EmployeeTest < Minitest::Test
  def test_employee_class
    assert Employee
  end

  def test_employee_name
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    assert_equal 'Adam', employee.name, "name match"
  end

  def test_employee_email_address
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    assert_equal 'adam@gmail.com', employee.email_address, "email_address match"
  end

  def test_employee_phone_number
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    assert_equal '202-555-1212', employee.phone_number, "phone_number match"
  end

  def test_employee_salary
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    assert_equal 150000, employee.salary, "salary match"
  end

  def test_employee_salary
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    employee.add_review("Adam is hardworking and persistent.")
    assert_equal "Adam is hardworking and persistent.", employee.review, "review match"
  end

  def test_employee_performance
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    employee.satisfactory_performance = true
    assert_equal true, employee.satisfactory_performance?, "performance match"
  end

  def test_salary_raise
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    employee.raise_salary(0.02)
    assert_equal 153000, employee.salary, "salary raise match"
  end

end
