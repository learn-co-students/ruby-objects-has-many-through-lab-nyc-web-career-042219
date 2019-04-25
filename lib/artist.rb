require 'pry'
class Artist
  attr_reader :name
  attr_accessor :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    self.songs << song
    self.genres << genre
    song
  end
end
