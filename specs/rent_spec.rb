require('minitest/autorun')
require_relative('../rent.rb')
require_relative('../customer.rb')
require_relative('../inventory.rb')

class TestRent < MiniTest::Test

  def setup

    @video_tape1 = Video_Tape.new("Con Air", 1995, 3)
    @video_tape2 = Video_Tape.new("Face/Off", 1996, 4)
    @video_tape3 = Video_Tape.new("The Rock", 1998, 1)
    @video_tape4 = Video_Tape.new("Waterworld", 1997, 4)
    @video_tape5 = Video_Tape.new("Robin Hood: Prince of Theives", 1995, 2)  

    videos = [@video_tape1, @video_tape2, @video_tape3, @video_tape4, @video_tape5]
    @inventory = Inventory.new(videos)

    @customer_1 = Customer.new("Iain", 200200, 20)
    @customer_2 = Customer.new("Nat", 300300, 100)
    @customer_3 = Customer.new("Alfred", 400400, 40)
    @customer_4 = Customer.new("Frank", 100100, 50)
  end

  def test_video_in_stock
    assert_equal(true, @video_tape5.in_stock?)
  end  

  # def test_not_in_stock
  #   assert_equal(false, )
  # end  


end    