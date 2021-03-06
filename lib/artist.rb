class Artist
    def self.find_or_create_by_name(artist_name)
        if found_artist = self.all.find {|artist| artist.name == artist_name}
            found_artist
        else
          new_artist = self.new(artist_name)
          new_artist
        end
      end
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def add_song(song)
        song.artist = self
    end
    def songs
        Song.all.select { |song| song.artist == self }
    end
    def print_songs
        songs.each {|song| puts song.name}
    end
end