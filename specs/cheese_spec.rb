require 'minitest/autorun'
require_relative '../cheese'

class TestCheese < Minitest::Test

   def setup
     @cheese = Cheese.new()
   end

   def test_get_price
     assert_equal(5, @cheese.getPrice)
   end

   def test_get_bogof_status
     assert_equal(false, @cheese.getBogofStatus)
   end
end
