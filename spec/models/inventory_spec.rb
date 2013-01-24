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

require 'spec_helper'

describe Inventory do
  pending "add some examples to (or delete) #{__FILE__}"
end
