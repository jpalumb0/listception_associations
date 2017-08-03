# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Board < ApplicationRecord
    has_many :lists
    has_many :cards, :through => :lists
    has_many :notes, :through => :cards
    has_many :taggings, :through => :cards
    has_many :tags, :through => :taggings
end
