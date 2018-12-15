require 'pry'
class Artist 
  attr_accessor :name 
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    
    
  end
  
  def self.all
    @@all 
  end 
  
  def self.destroy_all
    all.clear
  end 
  
  def save
    self.class.all << self 
  end 
  
  def self.create (artist_name)
    artist = new(artist_name)
    artist.save
    artist  
  end 
  
  def add_song (song)
    #binding.pry 
    #self.songs << song 
    song.artist = self 
  end 
  
end 