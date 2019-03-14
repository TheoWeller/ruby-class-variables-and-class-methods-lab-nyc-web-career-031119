require 'pry'

class Song
attr_accessor(:name, :artist, :genre)
@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@genres << genre
  @@count += 1
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
#
def self.genre_count
  result = {}
  genre_count = 0
  @@genres.each do |genre|
    result[genre] ||= result.uniq.count
end
result
binding.pry
end


end
