require 'minitest/autorun'
require_relative '../bread'

class TestBread < Minitest::Test

   def setup
     @bread = Bread.new()
   end

   def test_get_price
     assert(3, @bread.getPrice)
   end
end
