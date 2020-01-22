require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")
require_relative("../drink")
require_relative("../food")

class CustomerTest < Minitest::Test

def setup
  @customer = Customer.new("Dave", 25, 22, 5)
  @drink = Drink.new("whiskey", 10, 2, 5)
  @food = Food.new("chips", 2, 3)
end

def test_customer_has_a_name
  assert_equal("Dave", @customer.name)
end

def test_customer_has_money
  assert_equal(25, @customer.wallet)
end

def test_buy_drink
  @customer.buy_drink(@drink)
  assert_equal(15, @customer.wallet)
end

def test_drunkenness_goes_up
  @customer.buy_drink(@drink)
  assert_equal(7, @customer.drunkenness)
end

def test_customer_buys_food
  @customer.buy_food(@food)
  assert_equal(23, @customer.wallet)
end

def test_food_rejuvenation_level
  @customer.rejuvenation_level(@food)
  assert_equal(2, @customer.drunkenness)
end

end
