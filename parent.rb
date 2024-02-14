require_relative 'my_module'

class Parent
  include MyModule
  class InvalidAgeError < StandardError; end

  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age

    raise InvalidAgeError unless valid_age?
  end

  private

  def valid_age?
    (18..99).include?(age)
  end
end
