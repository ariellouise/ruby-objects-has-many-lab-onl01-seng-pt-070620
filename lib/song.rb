class Song 
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end 
  
  def save
    @@all
  end 
  
  def Songs 
    @@all 
  end 
end 