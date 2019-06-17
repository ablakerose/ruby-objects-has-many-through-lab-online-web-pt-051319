require 'pry'
class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    #how we can access all the songs
    #think about the attributes that a song has and how we can use those attributes to find the instances of the song that belongs to self.
      @songs
  end

  def genres
     @songs.collect do |song|
       song.genre
     end
   end
 
end
