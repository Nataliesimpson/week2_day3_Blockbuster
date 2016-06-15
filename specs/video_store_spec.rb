require('minitest/autorun')
require_relative('../inventory.rb')
require_relative('../video_tape.rb')
require_relative('../customer.rb')

class TestVideo_Store < MiniTest::Test

  def setup

    @video_tape1 = Video_Tape.new("Con Air", 1995, 3, 5)
    @video_tape2 = Video_Tape.new("Face/Off", 1996, 4, 3)
    @video_tape3 = Video_Tape.new("The Rock", 1998, 1, 5)
    @video_tape4 = Video_Tape.new("Waterworld", 1997, 4, 2)
    @video_tape5 = Video_Tape.new("Robin Hood: Prince of Theives", 1995, 2, 1)  

    videos = [@video_tape1, @video_tape2, @video_tape3, @video_tape4, @video_tape5]
    @inventory = Inventory.new(videos)

    @customer_1 = Customer.new("Iain", 200200, 20)
    @customer_2 = Customer.new("Nat", 300300, 100)
    @customer_3 = Customer.new("Alfred", 400400, 40)
    @customer_4 = Customer.new("Frank", 100100, 50)

    @customer_base = [@customer_1, @customer_2, @customer_3, @customer_4]

    @video_store = Video_Store.new(@inventory, @customer_base)

  end

  # def test_video_in_stock
  #   assert_equal(true, @video_store.in_stock?)
  # end

  # def test_video_not_in_stock
  #   assert_equal(false, @video_store.in_stock?)
  # end
  
  # def test_customer_has_balance
  #   assert_equal(true, @video_store.has_balance?)
  # end

  # def test_customer_not_has_balance
  #   assert_equal(false, @video_store.has_balance?)
  # end

  # def test_customer_can_rent_video
  #   assert_equal(true, @video_store.can_rent?)
  # end  

  # def test_customer_cannot_rent_video
  #   assert_equal(false, @video_store.can_rent?)
  # end  
  
end    