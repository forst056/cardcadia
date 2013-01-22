require 'spec_helper'

describe User do

  before do
  	@user = User.new(first_name: "Danny", last_name: "Forst", 
  				email: "forst056@gmail.com", password_digest: "Danny1234")
    @card1 = Card.new(card_name: "card1")
    @card2 = Card.new(card_name: "card2")
    @inventory = Inventory.new(user_id: "1", card_id: "2")
  end

  subject { @user } 

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }

  it { should be_valid }

  describe "when first name is not present" do
  	before { @user.first_name = " " }
  	it { should_not be_valid}
  end

  describe "when last name is not present" do
  	before { @user.last_name = " " }
  	it { should_not be_valid}
  end

  it "correctly stores card name in user inventory" do
    @user.cards.first { should == @card2 }
  end

end
