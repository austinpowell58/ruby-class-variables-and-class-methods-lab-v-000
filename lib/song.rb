require "pry"
class Song 
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @artist = artist 
    @genre = genre
    @name = name
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  @@genres = []
  @@count = 0 
  @@artists = []

  def self.count
    @@count
  end 
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    genre_count = {}
      
    @@genres.each do |kind|
      if genre_count[kind]
        genre_count[kind] << kind
      else
        genre_count[kind] = []
        genre_count[kind] << kind
        binding.pry
      end 
    end 
  end 
 
end
  