class Song 
  attr_accessor :name 
  attr_accessor :artist 
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    
    @name = name 
    @artist = artist 
    
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
  
  def self.create (song_name)
    song = new(song_name)
    song.save
    song 
  end 
  
  # def artist= (artist)
  #   @artist = artist 
  # end 
  
end 
