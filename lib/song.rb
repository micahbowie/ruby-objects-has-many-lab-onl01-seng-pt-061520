class Song 
  attr_accessor :name, :genre, :artist
  
  @@all = []
  
  def initialize(name)
    @name=name
    save
  end 
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def author_name
    if self.author == nil
      nil
    else self.author.name
    end 
  end 
  
end 