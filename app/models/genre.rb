class Genre < ActiveRecord::Base

  has_many :song_genres
  has_many :artist, through: :songs
  has_many :songs, through: :song_genres

  def slug
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    self.all.find{|name| name.slug == slug}
  end

end
