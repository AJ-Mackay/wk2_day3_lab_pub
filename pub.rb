class Pub

attr_reader :name
attr_accessor :till

def initialize(name, till)
  @name = name
  @till = till
end

def customer_right_age(customer)
  return customer.age >= 18
end

def sell_drink_to_customer(customer, drink)
  if customer_right_age(customer)
  return customer.wallet >= drink.price
  end
end

def has_till_increased(customer, drink)
  if sell_drink_to_customer(customer, drink) ==  true
  end
    @till += drink.price
end

def customer_drunkenness_level(customer)
  if customer.drunkenness >= 5
    return "Timmy, I love you, but please leave"
  end
  return "One more round, Timmy?"
end

end
