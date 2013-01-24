# == Schema Information
#
# Table name: cards
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  card_name        :string(255)
#  mana_cost        :string(255)
#  type_line        :string(255)
#  expansion        :string(255)
#  abilities        :text
#  flavor_text      :text
#  artist_info      :string(255)
#  collector_number :string(255)
#  power            :string(255)
#  toughness        :string(255)
#

class Card < ActiveRecord::Base
  attr_accessible :card_name, :mana_cost, :type_line, :expansion, :abilities, 
  			:flavor_text, :artist_info, :collector_number, :power, :toughness

  has_many :inventories
  has_many :users, :through => :inventories

end
