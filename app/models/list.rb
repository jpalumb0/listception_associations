# == Schema Information
#
# Table name: lists
#
#  id             :integer          not null, primary key
#  title          :string
#  board_id       :integer
#  position_order :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class List < ApplicationRecord
    belongs_to :board
    
    has_many :cards
    has_many :notes, :through => :cards
    has_many :taggings, :through => :cards
    has_many :tags, :through => :taggings
end
