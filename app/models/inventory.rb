# == Schema Information
#
# Table name: inventories
#
#  id         :integer          not null, primary key
#  user_id    :string(255)
#  card_id    :string(255)
#  condition  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Inventory < ActiveRecord::Base
  attr_accessible :card_id, :condition, :user_id

  belongs_to :user
  belongs_to :card

end
