class Resource < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true, length: {in: 2..40}, uniqueness: true
  validates :link, presence: true, length: {minimum: 4}, uniqueness: true
  validates :notes, presence: true, length: {in: 10..600}
  validates :category_id, presence: true

  acts_as_votable

  def upvotes
    self.get_upvotes.size
  end

  def downvotes
    self.get_downvotes.size
  end

  def netvotes
    self.get_upvotes.size - self.get_downvotes.size
  end
end

# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  title       :string
#  link        :text
#  notes       :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
