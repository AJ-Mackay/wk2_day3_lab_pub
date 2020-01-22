require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")
require_relative("../drink")
require_relative("../customer")

class PubTest < Minitest::Test

def setup
  @pub = Pub.new("Armadale Tavern", 100)
  @customer = Customer.new("Timmy", 25, 22, 5)
  @drink = Drink.new("Whiskey", 10, 1)
end

def test_pub_has_a_name
  assert_equal("Armadale Tavern", @pub.name)
end

def test_till_has_money
  assert_equal(100, @pub.till)
end

def test_has_till_increased
  @pub.has_till_increased(@customer, @drink)
  #give money to Pub
  #increase money in till
  assert_equal(110, @pub.till)
end

def test_customer_right_age
  result = @pub.customer_right_age(@customer)
  assert_equal(true, result)
end

def test_pub_can_sell_drink__success
  result = @pub.sell_drink_to_customer(@customer, @drink)
  assert_equal(true, result)
  # check if money increased for pub, if money decreased for customer
end

def test_customer_drunkenness_level
  result = @pub.customer_drunkenness_level(@customer)
  assert_equal("Timmy, I love you, but please leave", result)
end

end
