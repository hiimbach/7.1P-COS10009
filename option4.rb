def option_4
    album = $album_list[read_integer_in_range('Choose a album to update', 1, 4) - 1]
    type = read_integer_in_range("1 Update Title \n2 Update Genre", 1, 2).to_i
    case type
    when 1
        update_title(album)
    when 2
        update_genre(album)
    end
    print_album(album)
    puts "Press Enter to return to menu"
    gets
end

def update_title(album)
    new_title = read_string('New title: ') 
    album.title = new_title
end

def update_genre(album)
    for i in 1..5
        puts "#{i} #{$genre_names[i-1]}"
    end
    new_genre = read_integer_in_range('Choose a genre: ', 1, 5)
    album.genre = new_genre
end