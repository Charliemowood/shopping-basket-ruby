require 'minitest/autorun'
require_relative '../item'

class TestItem < Minitest::Test

   def setup
     @item = Item.new()
   end

   def test_get_price
     assert(5, @item.getPrice)
   end
end
