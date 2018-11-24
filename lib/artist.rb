class Artist

  attr_accessor :name

  @@all_artists = []

  def initialize(name)
    @name = name
    @@all_artists << self
  end

  def self.all
    @@all_artists
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map do |artist|
      artist.genre
    end
  end

end
