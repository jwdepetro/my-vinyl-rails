class Vinyl < ApplicationRecord
  validates :artist, presence: true
  validates :album, presence: true
  validates :year_printed, presence: true, numericality: {greater_than_or_equal_to: 1900, less_than_or_equal_to: Time.current.year}
  validates :year_released, presence: true, numericality: {greater_than_or_equal_to: 1900, less_than_or_equal_to: Time.current.year}
  validates :condition, presence: true, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
end
