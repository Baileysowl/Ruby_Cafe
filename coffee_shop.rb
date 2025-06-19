class CoffeeShop
  MENU = {
    "Espresso" => 2.5,
    "Latte" => 3.5,
    "Cappuccino" => 4.0,
    "Mocha" => 4.5,
    "Tea" => 2.0
  }

  def initialize
    @order = {}
  end

  def self.run
    loop do
      shop = new
      shop.serve_customer

      print "\nServe another customer? (yes/no): "
      break unless gets.chomp.strip.downcase == 'yes'
    end
    puts "\nThank you for visiting Ruby Café!"
  end

  def serve_customer
    def add_item(item, quantity)
  return false unless MENU.key?(item)

  @order[item] ||= 0
  @order[item] += quantity
  true
end

def items
  @order
end

def total
  calculate_total
end
    display_menu
    take_order
    if @order.empty?
      puts "No items ordered. Goodbye!"
      return
    end
    total = calculate_total
    print_receipt(total)
    accept_payment(total)
  end

  private

  def display_menu
    puts "\nWelcome to Ruby Café!"
    puts "Here's our menu:"
    MENU.each_with_index do |(item, price), index|
      puts "#{index + 1}. #{item} - $#{'%.2f' % price}"
    end
  end

  def take_order
    loop do
      print "\nEnter the item name to order (or type 'done' to finish): "
      input = gets.chomp.strip

      break if input.downcase == 'done'

      if MENU.key?(input)
        print "How many #{input}s would you like? "
        quantity = gets.chomp.to_i
        @order[input] ||= 0
        @order[input] += quantity
      else
        puts "Sorry, we don't have that item."
      end
    end
  end

  def calculate_total
    @order.reduce(0) { |sum, (item, qty)| sum + MENU[item] * qty }
  end

  def print_receipt(total)
    puts "\n----- Receipt -----"
    @order.each do |item, quantity|
      price = MENU[item]
      puts "#{item} x#{quantity} - $#{'%.2f' % (price * quantity)}"
    end
    puts "Total: $#{'%.2f' % total}"
    puts "-------------------"
  end

  def accept_payment(total)
    print "Enter payment amount: $"
    payment = gets.chomp.to_f
    if payment >= total
      change = payment - total
      puts "Payment accepted. Your change is $#{'%.2f' % change}"
    else
      puts "Not enough payment. Transaction canceled."
    end
  end
end
CoffeeShop.run
