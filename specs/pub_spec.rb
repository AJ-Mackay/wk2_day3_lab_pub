require("minitest/autorun")
require("minitest/reporters")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub")


class PubTest < Minitest::Test

def setup
  @pub = Pub.new("Armadale Tavern", 100)
end

def test_pub_has_a_name
  assert_equal("Armadale Tavern", @pub.name)
end

def test_till_has_money
  assert_equal(100, @pub.till)
end

end
