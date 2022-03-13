def option_3
    choice = read_integer('Choose a album: ') - 1
    puts "List"
    
    if $list.include? (choice)
        album = $album_list[choice]
        puts "You chose #{album.title} of #{album.artist}"
        if album.number_of_tracks != 0
            print_tracks(album.tracks, album.number_of_tracks)
            track_choice = read_integer_in_range("Choose a track from this album: \n ", 1, album.number_of_tracks) - 1
            #Play track
            puts "Playing #{album.tracks[track_choice].name} from album #{album.title}"
            for i in 1..2
                print '♩ ' 
                sleep 1
                print '♪ '
                sleep 1
                print '♫ '
                sleep 1
                print '♬ '
                sleep 1
            end
            puts ''
        else 
            puts "There is not any track in this album"
        end
    else
        puts "Album number #{choice+1} is not in the music list"
        if $list != []
            puts "This is the music list"
            $list.each do |number|
                print "#{number} "
                print_album($album_list[number])
            end
        else
            puts "There is not any album of this genre"
        end
    end           
end
