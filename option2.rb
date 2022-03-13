require './album'

def option_2
    puts '1 Display ALL albums'
    puts '2 Display Genre'
    $list = Array.new()
    choice = read_integer_in_range('',1,2)
    case choice
    when 1
        for i in 0..$number_of_albums-1
            album = $album_list[i]
            $list << i - 1
            print_album(album)
        end
    when 2
        puts 'Select Genre'
        for i in 1..5
            puts "#{i} #{$genre_names[i-1]}"
        end
        genre_choice = read_integer_in_range('', 1, 5)
        print_genre_tracks(genre_choice - 1)
    end

end

def print_genre_tracks(genre_choice)   
    count = 0
    for i in 1..$number_of_albums
        album = $album_list[i-1]
        if album.genre == genre_choice
            print "#{i} "
            print_album(album)
            $list << i - 1
            count += 1
        end
    end
    if count == 0
        puts "There is not any album of this genre"
    end
    
end


