require 'minitest/autorun'
require_relative 'coffee_shop'  

class TestOrder < Minitest::Test
  def setup
    @order = CoffeeShop.new
  end

  def test_add_item_valid
    assert @order.add_item("Latte", 2)
    assert_equal 2, @order.items["Latte"]
  end

  def test_add_item_invalid
    refute @order.add_item("Burger", 1)
    assert_nil @order.items["Burger"]
  end

  def test_total_calculation
    @order.add_item("Espresso", 2)  
    @order.add_item("Latte", 1)     
    assert_in_delta 8.5, @order.total, 0.01
  end
end
