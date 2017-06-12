require 'minitest/autorun'
require_relative '../customer'

class TestCustomer < Minitest::Test

  def setup
    @customer = Customer.new(true)
    @customer1 = Customer.new(false)
  end

  def test_check_customer_has_loyality_card_true_result
    assert_equal(true, @customer.checkLoyalityCardStatus)
  end

  def test_check_customer_has_loyality_card_true_result1
    assert_equal(false, @customer1.checkLoyalityCardStatus)
  end


end
