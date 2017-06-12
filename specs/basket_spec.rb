require 'minitest/autorun'
require_relative '../basket'
require_relative '../item'

class TestItem < Minitest::Test

  def setup
    @item = Item.new
    @basket = Basket.new
  end

  def test_basket_start_at_0
    assert_equal(0, @basket.item_count)
  end

  def test_can_add_item_to_basket
    @basket.add_item(@item)
    assert_equal(1, @basket.item_count)
  end

  def test_can_remove_item_from_basket
    @basket.add_item(@item)
    @basket.remove_item(@item)
    assert_equal(0, @basket.item_count)
  end

end
