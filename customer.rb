class Customer

attr_reader :name, :wallet, :age
attr_accessor :drunkenness

def initialize(name, wallet, age, drunkenness)
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end

def buy_drink(drink)
  if @wallet >= drink.price && @drunkenness <= 5
    @wallet -= drink.price
    @drunkenness += drink.alcohol_level
  end
end

end
