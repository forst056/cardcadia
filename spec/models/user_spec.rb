require 'spec_helper'

describe User do

  before do
  	@user = User.new(first_name: "Danny", last_name: "Forst", 
  				email: "forst056@gmail.com", password_digest: "Danny1234")
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

end
