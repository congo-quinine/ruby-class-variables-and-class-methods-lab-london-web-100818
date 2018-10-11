class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize(name, artist, genre)
    @name = name
    @genres = genre
    @artist = artist
    @@count += 1
    @@genres << @genres
    @@artists << @artist 
  end  
  
  def self.count 
    @@count
  end  
  
  def self.genre
    @@genre.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  
end