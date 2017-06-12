require 'minitest/autorun'
require_relative '../bread'

class TestBread < Minitest::Test

   def setup
     @bread = Bread.new()
   end

   def test_get_price
     assert_equal(3, @bread.getPrice)
   end

   def test_get_bogof_status
     assert_equal(true, @bread.getBogofStatus)
   end

end
