
class Artist

  @@all = []
  attr_accessor :name
  def initialize(name)
    @name =name 
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song 
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    @@all.each {|artist| return artist if artist.name = name}
    Artist.new(name)
  end

  def print_songs
    @songs.each{|song| puts song.name}
  end
end