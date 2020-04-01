class MP3Importer
<<<<<<< HEAD
    attr_accessor :path
    def initialize(path)
        @path = path
    end
    def files
        Dir::entries(path).grep(/\.mp3/)
        # Dir::entries... Dir is a class that has a method entries() 
        # .grep uses RegEx patterns to find matches
        # DIR - objects from DIRclass-directory streams representing directories in the underlying file stystem (and contents)
    end
    def import
        #send file to song class using Song.new_by_filename(some_filename)
        #Song.... will send us to the Song class (Song.new_by_filename(some_filename))and handle the creation od song instances and associate them to Artist instance
        files.each do |file| 
        Song.new_by_filename(file)
        end
    end
=======
  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end
>>>>>>> a5e8213c78689e4832be9485d4efaa7389270ac6
end