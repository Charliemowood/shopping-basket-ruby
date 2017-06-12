require 'minitest/autorun'
require_relative '../checkout'
require_relative '../basket'

class TestCheckout < Minitest::Test

   def setup
     @checkout = Checkout.new()
   end

   def test_balance_start_0
     assert_equal(0, @checkout.getBalance)
   end


end
