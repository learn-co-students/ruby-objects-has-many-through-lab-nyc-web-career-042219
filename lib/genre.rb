class Genre

  attr_reader :name
  @@all = []

  def initialize(name)
    @name= name
    @@all << self

  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists

      Song.all.map do |song| song.artist if song.genre == self

      end
  end
  # class methods

  def self.all
    @@all
  end








end
