require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../drink")

class DrinkTest < Minitest::Test

def setup
  @drink = Drink.new("rum and coke", 5, 1)
end

def test_drink_has_a_name
  assert_equal("rum and coke", @drink.name)
end

def test_drink_has_a_price
  assert_equal(5, @drink.price)
end

def test_drink_has_alcohol_level
  assert_equal(1, @drink.alcohol_level)
end

end
