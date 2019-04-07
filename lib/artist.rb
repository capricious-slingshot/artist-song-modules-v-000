class Artist
  extend Memorable
  extend Findable
  extend Paramable

  attr_accessor :name
  attr_reader   :songs

  def initialize
    @@all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
