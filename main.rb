require './input_functions'
require './menu'

# It is suggested that you put together code from your 
# previous tasks to start this. eg:
# TT3.2 Simple Menu Task
# TT5.1 Music Records
# TT5.2 Track File Handling
# TT6.1 Album file handling

def main
    finished = false
    $number_of_albums = 0
    $album_list = Array.new()
    begin 
        finished = menu_display()
    end until finished
end

main()
