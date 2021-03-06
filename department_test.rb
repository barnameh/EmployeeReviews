require 'minitest/autorun'
require 'minitest/pride'

require_relative 'department'
require_relative 'employee'

class DepartmentTest < Minitest::Test
  def test_department_class
    assert Department
  end

  def test_department_name
    department = ::Department.new("Education")
    assert_equal 'Education', department.name, "name match"
  end

  def test_adding_employee_to_department
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    department = ::Department.new("Education")
    department.add_employee(employee)
    frist_department_employee = department.employees[0]

    assert_equal frist_department_employee.name, employee.name, "deparment first employee name match"
  end

  def test_department_total_salary
    employee = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    employee2 = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    department = ::Department.new("Education")
    department.add_employee(employee)
    department.add_employee(employee2)

    assert_equal 300000, department.total_salary
  end

  def test_department_raise_salary_for_all
    employee1 = ::Employee.new(name: "Adam", email_address:"adam@gmail.com", phone_number: "202-555-1212", salary: 150000)
    employee1.satisfactory_performance = true
    employee2 = ::Employee.new(name: "John", email_address:"john@gmail.com", phone_number: "202-555-1212", salary: 150000)
    employee2.satisfactory_performance = false
    department = ::Department.new("Education")
    department.add_employee(employee1)
    department.add_employee(employee2)
    department.raise_salary_for_satisfactory_performance(6000)

    assert_equal 156000, employee1.salary
  end

end
