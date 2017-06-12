require 'minitest/autorun'
require_relative '../basket'
require_relative '../item'

class TestItem < Minitest::Test

  def setup
    @item = Item.new
    @basket = Basket.new
  end

  def test_basket_start_at_0
    assert_equal(0, @basket.itemCount)
  end

  def test_can_add_item_to_basket
    @basket.addItem(@item)
    assert_equal(1, @basket.itemCount)
  end







end
