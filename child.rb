class Child < Parent
  def say_fathers_last_name
    puts @last_name
  end

  private

  def valid_age?
    (0..18).include?(age)
  end
end
