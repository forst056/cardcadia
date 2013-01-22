class Card < ActiveRecord::Base
  attr_accessible :card_name, :mana_cost, :type_line, :expansion, :abilities, 
  			:flavor_text, :artist_info, :collector_number, :power, :toughness

  has_many :inventories
  has_many :users, :through => :inventories

end
