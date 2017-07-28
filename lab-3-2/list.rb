
require_relative 'item'
require 'terminal-table'

class List
  attr_accessor  :name , :items

  def initialize(name , items = [])
    @name = name
    @items = items
  end

  def add(new_item)
    @items << new_item
  end

  def complete_at!(index)
    @items[index].done = true
    end

  def display
    puts "Display the list : #{name}"
    @items.each do |item|
      if item.done?
        puts " -[x] #{item.display} "
      else
        puts " -[ ] #{item.display} "
      end
    end
 end 

 def display_done
    rows = []  
    puts "Display Done ones :"
    @items.each do |item|
      if item.done?
        rows << ["[x]","#{item.display}"]
        end
      end
      table = Terminal::Table.new(rows: rows)
      puts table
   end
    
 def display_undone 
    rows = []  
    puts "The unDone ones :" 
    @items.each do |item|
      if !item.done?
         rows << ["[ ]", "#{item.display}"]
        end
      end
      table = Terminal::Table.new(rows: rows)
      puts table
   end


  def display_as_table
    rows = []
    puts "The list of :#{name}"
    @items.each do |item|
      if item.done?
        rows << ["[x]", "#{item.display}"]
      else
        rows << ["[ ]", "#{item.display}"]
      end
      end
      table = Terminal::Table.new(rows: rows)
      puts table
    end  

end

#it1=Item.new("buy apples",true)
#it2=Item.new("buy oat",false)
#it3=Item.new("church",true)
#it4=Item.new("coffee",false)
#puts it1.display
#puts it2.display
#puts it3.display
#puts it4.display


#list1=List.new("sunday",[it1,it2,it3,it4])

#list1.display_as_table
#list1.display_undone
#list1.display_done
#list1.display



