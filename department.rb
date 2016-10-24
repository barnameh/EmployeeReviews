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

  def raise_salary_for_satisfactory_performance(amount)
    employees_with_satisfactory_performance = employees.select {|emp| emp.satisfactory_performance}
    if employees_with_satisfactory_performance.size > 0
      raise_per_employee = amount / employees_with_satisfactory_performance.size
      employees_with_satisfactory_performance.map {|emp| emp.salary += raise_per_employee}
    end
  end
end
