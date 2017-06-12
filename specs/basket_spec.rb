require 'minitest/autorun'
require_relative '../basket'
require_relative '../cheese'
require_relative '../bread'

class TestItem < Minitest::Test

  def setup
    @bread = Bread.new
    @cheese = Cheese.new
    @basket = Basket.new
  end

  def test_basket_start_at_0
    assert_equal(0, @basket.item_count)
  end

# Bread is part of bogof deal
  def test_can_add_item_to_basket
    @basket.add_item(@bread)
    assert_equal(2, @basket.item_count)
  end

  def test_can_remove_item_from_basket
    @basket.add_item(@cheese)
    @basket.remove_item(@cheese)
    assert_equal(0, @basket.item_count)
  end

  def test_can_empty_basket
    @basket.add_item(@cheese)
    @basket.add_item(@bread)
    assert_equal([], @basket.empty)
  end

  def test_can_empty_basket_when_it_starts_empty
    assert_equal([], @basket.empty)
  end

  def test_can_double_item
    @basket.double_item(@bread)
    assert_equal(2, @basket.item_count)
  end

end
