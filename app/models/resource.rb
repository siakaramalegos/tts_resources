class Resource < ActiveRecord::Base
  belongs_to :category
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
