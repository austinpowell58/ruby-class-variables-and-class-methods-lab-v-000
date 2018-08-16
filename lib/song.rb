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
      
    @@genres.uniq.each do |kind|
      genre_count[:kind] = []
      genre_count[:kind] = 5
      
    end 
  end 
 
end
  