require './album'
require './input_functions'

def option_1
    name_file = read_string("Input the file name")
    music_file = File.new(name_file, "r")
    $number_of_albums = music_file.gets.to_i
    $list = Array.new()
    for i in 1..$number_of_albums
        album = import_album(music_file)
        $album_list << album
        $list << i - 1
    end
    music_file.close()

end
