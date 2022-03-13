require './option1'
require './option2'
require './option3'
require './option4'

def menu_display
    puts "--------------------------------------"
    puts('Options: ')
    puts('1 Read in Albums')
    puts('2 Display Albums')
    puts('3 Select an Album to play')
    puts('4 Update an existing Album')
    puts('5 Exit')
    choose_one_option()
end

def choose_one_option()
    choice = read_integer_in_range('', 1, 5)
    case choice
    when 1
        option_1()
    when 2
        if $album_list.length > 0
            option_2()
        else 
            puts "Please input the file name by selecting 1 in the main menu"
        end
    when 3
        if $album_list.length > 0
            option_3()
        else 
            puts "Please input the file name by selecting 1 in the main menu"
        end
    when 4
        if $album_list.length > 0
            option_4()
        else 
            puts "Please input the file name by selecting 1 in the main menu"
        end
    when 5
    puts "Thank you"
        return true
    end
    return false
end 


