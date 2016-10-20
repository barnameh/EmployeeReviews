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
  end

  def add_review (a_review)
    @review = a_review
  end

  def raise_salary(percent)
    @salary += salary * 0.02
  end


end
