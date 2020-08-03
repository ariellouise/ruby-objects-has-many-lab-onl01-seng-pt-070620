class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def Songs 
    Song.all.select { |song| song.artist == self }
  end 
  
  def add
end 