require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../video_tape.rb')
require_relative('../inventory.rb')

class TestCustomer < MiniTest::Test

  def setup  #name, card_number, balance
    @customer_1 = Customer.new("Iain", 200200, 20)
    @customer_2 = Customer.new("Nat", 300300, 100)
    @customer_3 = Customer.new("Alfred", 400400, 40)
    @customer_4 = Customer.new("Frank", 100100, 50)
  end

  def test_customer_name
    assert_equal("Iain", @customer_1.name)
  end  

  def test_card_number
    assert_equal(200200, @customer_1.card_number)
  end  

  def test_customer_balance
    assert_equal(100, @customer_2.balance)
  end  

  def test_add_to_customer_balance
    assert_equal(120, @customer_2.add_to_customer_balance)
  end  
  
  def test_subtract_from_customer_balance
    assert_equal(20, @customer_3.subtract_from_customer_balance)
  end   

  def test_new_customer_balance
    price = 5
    assert_equal(15, @customer_1.new_customer_balance(price))  
  end 

  




end
