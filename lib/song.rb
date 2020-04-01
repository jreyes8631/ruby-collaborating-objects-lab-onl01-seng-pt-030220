class Song
    def self.new_by_filename(filename)
        song = filename.split(' - ')[1]
        artist = filename.split(' - ')[0]
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
      end    
    def self.all
        @@all
    end
    attr_accessor :name, :artist, :title, :artist_name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def artist_name= (name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end
<<<<<<< HEAD
end
=======
end
>>>>>>> a5e8213c78689e4832be9485d4efaa7389270ac6
