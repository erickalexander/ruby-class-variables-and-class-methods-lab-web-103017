require "pry"

class Song


  attr_accessor :name, :artist, :genre

  @@count = 0
  @@count_genres = 0
  @@artists = []
  @@genres = []
  @@genres_hash = Hash.new(0)
  @@artist_hash = Hash.new(0)

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count

    @@genres.inject(@@genres_hash) { |total, e| total[e] += 1 ;total}

  end

  def self.artist_count

    @@artists.inject(@@artist_hash) { |total, e| total[e] += 1 ;total}

  end


end
