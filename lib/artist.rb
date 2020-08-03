class Artist 
  attr_accessor :name 
  
  def initialize(name) #initialize
    @name = name 
  end 
  
  def songs #has many 
    Song.all.select {|song| song.artist == self }
  end 
  
  def add_song(song) #add
    song.artist = self 
  end 
  
  def add_song_by_name(name) #add by name
    song = Song.new(name)
    add_song(song)
  end 
  
  def self.song_count
    Song.all.count
  end 
end 