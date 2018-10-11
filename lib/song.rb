class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genre = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genere << name
    @@artists << artist 
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