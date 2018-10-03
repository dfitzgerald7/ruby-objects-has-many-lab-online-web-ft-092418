require "pry"
class Artist 
  attr_accessor :name, :songs 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    #binding.pry
    song.artist = self 
    self.songs << song unless self.songs.include?(song)
  end 
  
  def self.song_count 
    self.songs.count
  end 
end 