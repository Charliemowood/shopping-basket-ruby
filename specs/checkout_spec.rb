require 'minitest/autorun'
require_relative '../checkout'
require_relative '../basket'
require_relative '../bread'
require_relative '../cheese'
require_relative '../customer'


class TestCheckout < Minitest::Test

   def setup
     @checkout = Checkout.new()
     @basket = Basket.new()
     @cheese = Cheese.new()
     @bread = Bread.new()
     @customer = Customer.new(true)
     @customer1 = Customer.new(false)
   end

   def test_balance_start_0
     assert_equal(0, @checkout.getBalance(@basket, @customer1))
   end

   def test_can_get_balance_total_from_basket
     @basket.add_item(@cheese)
     @basket.add_item(@bread)
     assert_equal(8, @checkout.getBalance(@basket, @customer1))
   end

   def test_can_different_total_from_basket
     @basket.add_item(@cheese)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@cheese)
     assert_equal(16, @checkout.getBalance(@basket, @customer1))
   end

   def test_does_over_20_discount_work
     @basket.add_item(@cheese)
     @basket.add_item(@cheese)
     @basket.add_item(@cheese)
     @basket.add_item(@cheese)
     @basket.add_item(@cheese)
     assert_equal(22.5, @checkout.getBalance(@basket, @customer1))
   end

   def test_10_breads_over_20_discount_works
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     assert_equal(27, @checkout.getBalance(@basket, @customer1))
   end

   def test_loyality_card_owner_gets_2percent_off
     @basket.add_item(@cheese)
     @basket.add_item(@cheese)
     assert_equal(9.8, @checkout.getBalance(@basket, @customer))
   end

   def test_loyality_bogof_andover20_discount
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@bread)
     @basket.add_item(@cheese)
     @basket.add_item(@cheese)
     assert_equal(35.2, @checkout.getBalance(@basket, @customer))
   end


end
