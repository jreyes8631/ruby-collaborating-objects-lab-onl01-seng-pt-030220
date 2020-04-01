class Artist
<<<<<<< HEAD
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
=======
  @@all = []
  attr_accessor :name
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
    Song.find_by_artist(self)
  end
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end
  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end
  def save
    @@all << self
  end
  def print_songs
    songs.each {|song| puts song.name}
  end
>>>>>>> a5e8213c78689e4832be9485d4efaa7389270ac6
end