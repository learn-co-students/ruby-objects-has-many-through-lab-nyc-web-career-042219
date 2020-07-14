require 'Pry'

class Genre

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    #binding.pry
    Song.all.select { |song| song.genre == self }
  end

  def artists
    self.songs.collect { |song| song.artist}
  end

end
