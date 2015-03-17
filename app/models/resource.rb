class Resource < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true, length: {in: 2..40}, uniqueness: true
  validates :link, presence: true, length: {minimum: 4}, uniqueness: true
  validates :notes, presence: true, length: {in: 10..600}
  validates :category_id, presence: true
end
