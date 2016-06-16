class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]
  end

  def add_ingredient(ingredient)
  	@ingredient.push(ingredient)
  end
  	
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
  #return  our total price to whoever called for it
   total_price_of_milkshake
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

puts nizars_milkshake.price_of_milkshake

  # ******** START MY CODE  ********

class Milk_Shake_Summary
	New_Milkshake = [] # empty list to add milkshakes

	New_Milkshake.push() #to add milkshakes to this list
	
	# use p New_Milkshake to check verify

class price_of_milkshake

end# method to checkout the milkshakes on the list


end	


   # ********  END MY CODE  ******** 

# milkshake = MilkShake.new("Chocolate", 7)

# class Ingredient
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end

# banana = Ingredient.new("Banana", 2)