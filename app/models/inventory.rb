class Inventory < ActiveRecord::Base
  attr_accessible :card_id, :condition, :user_id

  belongs_to :user
  has_many :cards

end
