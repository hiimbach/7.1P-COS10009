require './track.rb'

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Album
# NB: you will need to add tracks to the following and the initialize()
	attr_accessor :artist, :title, :genre, :number_of_tracks, :tracks

# complete the missing code:
	def initialize (artist, title, genre, number_of_tracks, tracks)
		# insert lines here
		@genre = genre
		@title = title
		@artist = artist
		@number_of_tracks = number_of_tracks
        @tracks = tracks
	end
end

def import_album(music_file)
    album_artist = music_file.gets.chomp
	album_title = music_file.gets.chomp
	album_genre = music_file.gets().to_i
    number_of_tracks = music_file.gets().to_i
	tracks = read_tracks(music_file, number_of_tracks)
	album = Album.new(album_artist, album_title, album_genre, number_of_tracks, tracks)
	return album
end


# Takes a single album and prints it to the terminal along with all its tracks
def print_album(album)
  # print out all the albums fields/attributes
  # Complete the missing code.
	puts('Genre: ' + $genre_names[album.genre])
	puts(album.title + " by " + album.artist)
	puts ''
end

