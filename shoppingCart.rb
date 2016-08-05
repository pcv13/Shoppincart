
class ShoppingCart

	def initialize
		@item =[]
	end
	def add_item(item)
 		@item.push(item)
		
  	end
	def checkout 
		c=0
		@tprice=0
			@item.each do|item|
		
			@tprice += item.price
			c=c+1
			if c==6
			@tprice = @tprice * 0.95
			end
			
			end
		puts "Your total today is $ #{@tprice} "
	end
	
end


class Item 
attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
puts @price
  end

  def price
      price = @price
	
  end
end

class Houseware < Item
attr_reader :name, :price
  def initialize(name, price)

      if price>100
	@price=(price * 0.95)
puts @price
	return @price
		else 
		return @price 

	end

  end
end

class Fruit < Item
attr_reader :name, :price
  def price
	weekend= false
	if weekend == true 
	@price=(price * 0.90)
     	return @price
		else 
		return @price
	end
  end
end


	

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)

joshs_cart.add_item(vaccuum)
joshs_cart.add_item(oj)
joshs_cart.add_item(banana)
joshs_cart.add_item(vaccuum)
joshs_cart.add_item(oj)
joshs_cart.add_item(banana)
joshs_cart.checkout
