class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Genre.songs.size
  end

  def artist_count
    Genre.artists.size
  end

  def all_artist_names
    Genre.artists.map do |artist|
      artist.name
    end
  end
end
