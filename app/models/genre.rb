class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.all.count
  end

  def artist_count
    self.artists.all.count
  end

  def all_artist_names
    artists = self.artists.all
    artists.map do |artist|
      artist.name 
    end 
  end
end
