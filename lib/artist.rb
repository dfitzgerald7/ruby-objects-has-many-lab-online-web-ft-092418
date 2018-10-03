require "pry"
class Artist 
  attr_accessor :name, :songs 
  
  @@song_count = 0 
  
  def initialize(name)
    @name = name
    @songs = []
    @@song_count += 1
  end
  
  def add_song(song)
    #binding.pry
    song.artist = self 
    self.songs << song unless self.songs.include?(song)
  end 
  
  def add_song_by_name(song_name)
    Song.new(song_name).tap {|song| add_song(song)}
  end 
  
  def self.song_count 
    @@song_count
  end 
end 