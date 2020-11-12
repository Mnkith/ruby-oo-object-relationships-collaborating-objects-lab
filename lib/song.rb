
class Song

  @@all = []

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist 
    artist.add_song self
  end

  def self.new_by_filename(file_name)
    data = file_name.split(' - ')
    song = Song.new(data[1])
    song.artist = Artist.new(data[0])
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
end