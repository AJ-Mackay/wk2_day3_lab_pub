require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")
require_relative("../drink")

class CustomerTest < Minitest::Test

def setup
  @customer = Customer.new("Dave", 25, 22, 0)
  @drink = Drink.new("whiskey", 10, 2)
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
  assert_equal(2, @customer.drunkenness)
end

end
