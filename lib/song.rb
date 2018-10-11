class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = Hash.new(0)
  
  
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
  
#   names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]
# counts = Hash.new(0)
# names.each { |name| counts[name] += 1 }
  
end