require 'spec_helper'

describe Card do

  subject { page }
  let(:card) { FactoryGirl.create(:card) }

  describe 'Show' do
  	  before { visit card_path(card) }

  	  describe "should show all the right elements" do
 		
	  	it { should have_content('Card Name:') }
	  	it { should have_content(card.card_name) }
	  	it { should have_content('Mana Cost:') }
	  	it { should have_content(card.mana_cost) }
	  	it { should have_content('Type:') }
	  	it { should have_content(card.type_line) }
	  	it { should have_content('Expansion:') }
	  	it { should have_content(card.expansion) }
	  	it { should have_content('Flavor Text:') }
	  	it { should have_content(card.flavor_text) }
	  	it { should have_content('Artist Info:') }
	  	it { should have_content(card.artist_info) }
	  	it { should have_content('Collector #:') }
	  	it { should have_content(card.collector_number) }
	  	it { should have_content('P / T:') }
	  	it { should have_content(card.power) }
	  	it { should have_content(card.toughness) }
	  end
  end

  describe 'Edit' do
  	before { visit edit_card_path(card) }

  	describe "should show all the right elements"

  		it { should have_selector('label', text: 'Card name') }
  end


end
