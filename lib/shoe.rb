require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    self.add_brand
    BRANDS.uniq
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def add_brand 
    if BRANDS.include?(self.brand)
      return BRANDS
    else 
      BRANDS << self.brand 
      return BRANDS
    end 
  end 


  
end