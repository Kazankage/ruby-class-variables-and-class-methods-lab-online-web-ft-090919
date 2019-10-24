class Song 
  
  attr_accessor :name, :artist, :genre 
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@artists << artist 
    @@genres << genre 
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def self.genre_count
    @@genres.each do |genre| 
      if @@genre_count.key?(genre)
        @@genre_count[genre] += 1 
      else 
        @@genre_count[genre] = 1
      end
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist| 
      if @@artist_count.key?(artist)
        @@artist_count[artist] += 1 
      else 
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
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
  
end

apple = Song.new("apple", "apple pie", "rock")
pie = Song.new("pie", "i dont know", "pop")
triange = Song.new("title", "apple pie", "rock")
apple2 = Song.new("apple", "apple pie", "rock")
apple3 = Song.new("apple", "wow", "rock")
apple4 = Song.new("apple", "i dont know", "emo")

=begin
puts apple.name
puts apple.artist
puts apple.genre
puts pie.name
puts pie.artist
puts pie.genre
puts triange.name
puts triange.artist
puts triange.genre
puts Song.count
print Song.artists
puts
print Song.genres
puts
=end
print Song.genre_count
puts 
print Song.artist_count