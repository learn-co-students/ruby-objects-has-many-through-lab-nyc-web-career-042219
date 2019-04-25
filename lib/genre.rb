class Genre
  attr_reader :name
  attr_accessor :songs, :artists

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def self.all
    @@all
  end
end
