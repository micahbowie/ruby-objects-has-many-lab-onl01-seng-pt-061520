class Post 
  attr_accessor :title, :author, :artist
  
  @@all = []
  
  def initialize(title)
    @title=title
    save
  end 
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def author_name
    if self.author.name == nil
      nil
    else self.author.name
    end 
  end 
  
end 