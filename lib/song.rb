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
  
  def genre_count
    @@genres.collect do |gen|
      :gen => gen.count
    end
  end
end