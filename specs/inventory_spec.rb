require('minitest/autorun')
require_relative('../inventory.rb')
require_relative('../video_tape.rb')

class TestInventory < MiniTest::Test

  def setup
   @video_tape1 = Video_Tape.new("Con Air", 1995, 3, 5)
   @video_tape2 = Video_Tape.new("Face/Off", 1996, 4, 5)
   @video_tape3 = Video_Tape.new("The Rock", 1998, 1, 5)
   @video_tape4 = Video_Tape.new("Waterworld", 1997, 4, 5)
   @video_tape5 = Video_Tape.new("Robin Hood: Prince of Theives", 1995, 2, 5)  

    videos = [@video_tape1, @video_tape2, @video_tape3, @video_tape4, @video_tape5]
    @inventory = Inventory.new(videos)

  end  

  def test_total_inventory
    assert_equal(5, @inventory.total_inventory)
  end

  def test_video_in_stock
    assert_equal(true, @inventory.video_in_stock?(@video_tape4))
  end  

 









end  