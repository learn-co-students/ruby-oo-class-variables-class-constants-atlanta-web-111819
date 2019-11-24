require 'pry'

class Shoe
  attr_accessor :color, :material, :condition, :brand, :size
  # attr_reader :brand, :size

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if BRANDS.include?(brand) == false 
      BRANDS << brand 
    end 

  end 
 
  # def brand= (brand)
  #   BRANDS << brand
  # end
  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  # def brand=(brand)
  #   @brand = brand 
  #   BRANDS << brand
  # end 
end