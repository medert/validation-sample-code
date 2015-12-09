class Song < ActiveRecord::Base
  validate :title, presence: true
  validate :artist, presence: true
  validate :album, presence: true
  validates :year, presence: true
  validates :year, numericality: true, length: { is: 4 }
  validates :trak_number, numericality: true
  validates :genre, presence: true
  validates :length_in_seconds, length: {in: 1..5000}
  validates :image, inclusion: {in: %w(http://)}

end
