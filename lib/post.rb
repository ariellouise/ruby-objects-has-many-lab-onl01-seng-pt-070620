class Post 
  attr_accessor :author, :title 
  
  @@all = []
  
  def initialize(title)
    @title = title 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def posts 
    @@all 
  end 
  
  def title 
    @title 
  end 
  
  def author_name 
    if author 
      self.author.name 
    else 
      nil 
    end 
  end 
end 