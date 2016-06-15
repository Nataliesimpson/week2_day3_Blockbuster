require('minitest/autorun')
require_relative('../video_tape.rb')
require_relative('../customer.rb')
require_relative('../inventory.rb')

class TestVideo_Tape < MiniTest::Test

  def setup
  @video_tape1 = Video_Tape.new("Con Air", 1995, 3, 5)
  @video_tape2 = Video_Tape.new("Face/Off", 1996, 4, 3)
  @video_tape3 = Video_Tape.new("The Rock", 1998, 1, 5)
  @video_tape4 = Video_Tape.new("Waterworld", 1997, 4, 2)
  @video_tape5 = Video_Tape.new("Robin Hood: Prince of Theives", 1995, 2, 1) 

  @videos = [@video_tape1, @video_tape2, @video_tape3, @video_tape4, @video_tape5] 

  @customer = Customer.new("Iain", 200200, 20)
  end

  def test_film_name
    assert_equal("Con Air", @video_tape1.name)
  end

  def test_film_year
    assert_equal(1997, @video_tape4.year)
  end   

  def test_film_quantity
    assert_equal(4, @video_tape4.quantity)
  end  

  def test_film_price
    assert_equal(5, @video_tape1.price)
  end  

  def test_if_customer_can_afford
    assert_equal(true, @customer.customer_can_afford(@video_tape1))
  end    


end










