class Genre

  attr_accessor :name

  @@all_genres = []

  def self.all
    @@all_genres
  end

  def initialize(name)
    @name = name
    @@all_genres << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
