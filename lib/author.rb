class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def posts #has many 
    post.all.select {|post| post.author == self }
  end 
  
  def add_post(post)
    post.author = self 
  end 
  
  def add_post_by_title(name)
    post = post.new(name)
    add_post(post)
  end 
  
  def self.post_count
    post.all.count
  end 
  
end 
