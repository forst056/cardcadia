class Inventory < ActiveRecord::Base
  attr_accessible :card_id, :condition, :user_id

  belongs_to :user
  belongs_to :card

end
