class Category < ActiveRecord::Base
  has_many :resources

  validates :name, presence: true, length: {in: 2..25}, uniqueness: true
  validates :description, presence: true, length: {in: 2..200}
end

# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
