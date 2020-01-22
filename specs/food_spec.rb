require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../food")

class FoodTest < Minitest::Test

def setup
  @food = Food.new("Chips", 2, 3)
end

end
