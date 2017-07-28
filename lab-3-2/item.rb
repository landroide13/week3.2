
class Item
  attr_accessor :name

  def initialize(name, done = false)
    @name = name
    @done = done
  end
  
  def done?
    @done
  end
  
  def mark_done!
    @done=true
  end
  
  def display
    if done? == true
      @name.colorize(:green)
    else
      @name.colorize(:yellow)
    end
  end
  
  # input: - [x] Love Ruby
  def self.new_from_line(line)
    line[6..-1]
    done = line[3] == "x"
    Item.new(name, done)
  end
end

#it1=Item.new("buy apples",true)
#puts it1.display
