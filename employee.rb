require_relative 'employee_data'

class Employee

  attr_accessor :name
  attr_accessor :email_address
  attr_accessor :phone_number
  attr_accessor :salary
  attr_accessor :review
  attr_accessor :satisfactory_performance

  def initialize(name:, email_address:, phone_number:, salary:)
    @name = name
    @email_address = email_address
    @phone_number = phone_number
    @salary = salary
    add_employee_data
  end

  def add_employee_data
    employee_data_file_name = Dir.getwd + "/employee_data.csv"
    if !File.exists?(employee_data_file_name)
    # need to add header first
      CSV.open(employee_data_file_name, "w") do |csv|
        csv << ["Name", "email_address", "phone_number","salary"]
        end
    end

    CSV.open(employee_data_file_name, "a") do |csv|
      csv << [@name, @email_address, @phone_number, @salary ]
    end
  end

  def add_review (a_review)
    @review = a_review
  end

  def satisfactory_performance?
    @satisfactory_performance
  end

  def raise_salary(percent)
    @salary += salary * percent
  end
end
