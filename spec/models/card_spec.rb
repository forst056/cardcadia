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

require 'spec_helper'

describe Card do

	let(:card) { FactoryGirl.create(:card) }

  	describe 'should create a valid user' do
	
  	
  	# = Card.new(card_name: "Foo", mana_cost: "BAR", type_line: "Foobar - foobar", 
  	#					expansion: "expansion", abilities: "abilities", flavor_text: "flavor text", 
  	#					artist_info: "artist info", collector_number: "1000 / 1000", power: "10", toughness: "10")
  

  subject { card }

  it { should respond_to :id }
  it { should respond_to :card_name }
  it { should respond_to :mana_cost }
  it { should respond_to :type_line }
  it { should respond_to :expansion }
  it { should respond_to :abilities }
  it { should respond_to :flavor_text }
  it { should respond_to :artist_info }
  it { should respond_to :collector_number }
  it { should respond_to :power }
  it { should respond_to :toughness }

end

end
