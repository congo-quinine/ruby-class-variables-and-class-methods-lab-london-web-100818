class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = Hash.new(0)
  @@artist_count = Hash.new(0)
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << @genre
    @@artists << @artist 
  end  
  
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
    @@genres.each { |i|
      @@genre_count[i] = 0
    }
    @@genres.each { |i|
      @@genre_count[i] += 1
    }
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each {|i| @@artist_count[i] = 0}
    @@artists.each {|i| @@artist_count[i] += 1}
  end
  
end