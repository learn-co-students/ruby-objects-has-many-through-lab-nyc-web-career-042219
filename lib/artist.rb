require_relative('./genre')
require_relative('./song')
require 'pry'

class Artist

@@all = []

attr_reader :name


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song (name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self

    end
  end

  def genres
    Song.all.select do |songs|
      songs.artist == self
    end.map do |artist_songs|
      artist_songs.genre
    end
  end
end
