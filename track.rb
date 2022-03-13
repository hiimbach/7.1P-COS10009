
class Track
	attr_accessor :name, :location

	def initialize (name, location)
		@name = name.chomp
		@location = location
	end
end

# Returns an array of tracks read from the given file
def read_tracks(music_file, number_of_tracks)
  count = number_of_tracks
  tracks = Array.new()

  # Put a while loop here which increments an index to read the tracks
  for i in 1..count
    tracks << read_track(music_file)
  end
  return tracks
end

# reads in a single track from the given file.
def read_track(a_file)
  # complete this function
  Track.new(a_file.gets(), a_file.gets())
	# you need to create a Track here.
end


# Takes an array of tracks and prints them to the terminal
def print_tracks(tracks, number_of_tracks)
  # Use a while loop with a control variable index
  # to print each track. Use tracks.length to determine how
  # many times to loop.
  count = 1
  for i in 0..number_of_tracks-1
    print("#{count} ")
    print_track(tracks[i])
    count += 1
  end

  # Print each track use: tracks[index] to get each track record
end

# Takes a single track and prints it to the terminal
def print_track(track)
  puts(track.name)
	puts(track.location)
end
