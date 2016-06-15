class Inventory

  attr_reader :inventory

  def initialize(inventory)
    @inventory = inventory
    @unique_video = []
  end

  def total_inventory
    @inventory.count
  end  

  def video_in_stock?(video_tape_object)
    return_value = "f"
    for video in @inventory
      if video.name == video_tape_object.name
        return_value = "t"
      end 
    end
    if return_value == "t"
      return true
    else
      return false
    end
  end



end
