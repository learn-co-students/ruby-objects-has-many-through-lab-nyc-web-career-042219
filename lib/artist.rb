class Artist

  @@all=[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def new_song(songname, genre)
    Song.new(songname,self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    genrearray=[]
    Song.all.select do |song| song.artist == self
      genrearray << song.genre
    end
    genrearray
  end








end
