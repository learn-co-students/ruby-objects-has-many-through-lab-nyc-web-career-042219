require 'Pry'

class Artist

  @@all = []

  attr_reader :name #is this for sure a attr reader?
  attr_accessor :genre

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def new_song(song, genre)
    new_song = Song.new(song, self, genre)
  end

  def genres
    self.songs.collect { |song| song.genre}
  end

end
