class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    # song_song = self.songs.map {|song| song.artist == self}
    # song_song.length
    self.songs.length
  end

  def genre_count
    #return the number of genres associated with the artist
    # artist_songs = self.songs.map {|song| song.artist == self}
    # artist_genre = artist_songs.select {{song| song.genre}
    # artist_genre.length
    self.genres.length
  end
end
