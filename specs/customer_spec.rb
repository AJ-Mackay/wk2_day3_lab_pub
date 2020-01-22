require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer")

class CustomerTest < Minitest::Test

def setup
  @customer = Customer.new("Dave", 25)
end

def test_customer_has_a_name
  assert_equal("Dave", @customer.name)
end

def test_customer_has_money
  assert_equal(25, @customer.wallet)
end


end
