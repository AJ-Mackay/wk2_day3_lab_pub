class Drink

attr_reader :name, :price, :alcohol_level, :available

  def initialize(name, price, alcohol_level, available)
    @name = name
    @price = price
    @alcohol_level = alcohol_level
    @available = available
  end

end
