class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs

  def slug(slug)
    self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)

  end

end
