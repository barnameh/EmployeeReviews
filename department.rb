require_relative 'employee'


class Department
  attr_reader :employees
  attr_accessor :name

  def initialize(name)
    @name = name
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def total_salary
    employees.reduce(0) {|total, emp| total + emp.salary}
  end

  def raise_salary_for_all(percent)
    employees.map {|emp| emp.salary += emp.salary * percent}
  end
end
