require 'pry'

class Song 

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre 


  def initialize(name, artist, genre)
    @@count += 1 
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist 
    @genre = genre

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
    counts = Hash.new(0)
    @@genres.each { |name| counts[name] += 1 }
    binding.pry 
  end
end