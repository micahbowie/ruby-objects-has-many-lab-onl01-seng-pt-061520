class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name =name 
  end 
  
  def add_post_by_name(name)
    song = Song.new(name)
    add_song(song)
  end 
  
  def add_song(song)
    song.artist=self 
  end 
  
  def songs 
    the_list = Song.all
    the_list.select {|song| song.artist == self }
  end 
  
  def self.song_count
    @@song_artist_list =[]
    the_list = Song.all
    the_list.each {|song| @@song_artist_list << song.artist }
    lets_count = @@song_artist_list.uniq
    lets_count.count 
  end 
end 

