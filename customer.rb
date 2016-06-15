class Customer

  attr_reader :name, :card_number, :balance

  def initialize(name, card_number, balance)
    @name = name
    @card_number = card_number
    @balance = balance
  end   

  def customer_can_afford(video_tape)
    return @balance > video_tape.price   
  end

  def add_to_customer_balance
    return @balance += 20
  end  

  def subtract_from_customer_balance
    return @balance -= 20
  end  

  def new_customer_balance(price)
    return @balance - price
  end  






end   