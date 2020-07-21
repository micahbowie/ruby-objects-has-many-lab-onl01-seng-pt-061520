class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name =name 
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
  
  def add_song(song)
    song.artist=self 
  end 
  
  def songs(name_here) 
    Song.all select { |song| song.artist == self}
  end 
end 

  
  