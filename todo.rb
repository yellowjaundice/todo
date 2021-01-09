# user interface
# add task, delete task, check off task, show tasks
puts "Welcome Jaundice. Get to work!"

def menu
  list = []
  loop do
    show_menu
    input = gets.chomp
    case input
    when "1"
      puts "What task would you like to add"
      task = gets.chomp
      list.push((list.length + 1).to_s + " " + task)
      puts list
    when "2"
      puts "Remove task"
      #display array, choose which item to remove, remove the item, display array again
      puts list
      puts "which task would you like to remove"
      index = gets.strip.to_i
      list.delete_at(index - 1)      
      puts list
    when "3"
      puts "Complete task"
      #display list, select item, append list item, display list
      puts list
      puts "Which task did you finish?"
      finished_item = gets.to_i
      puts list[finished_item - 1] = "#{list[finished_item - 1]} -Done!" 

    when "4"
      close
    else
      puts "you suck again!"
    end
  end
end

def show_menu
  puts "1. Add task"
  puts "2. Remove task"
  puts "3. Complete task"
  puts "4. Exit"
end

def close
  exit
end




def run
  menu  
end

run

