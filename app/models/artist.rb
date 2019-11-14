class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    song = get_first_song
    song.genre
  end 

  def song_count
    self.songs.all.count
  end

  def genre_count
    songs = self.songs.all
    
    genre_id = songs.map do |song|
      song.genre.id
    end 
    
    unique_genre_ids = genre_id.uniq.count
  end

  def get_first_song 
    self.songs.all.first
  end 
end
