require 'spec_helper'

describe "Static pages" do
  
 	describe "Home page" do

  		it "should have content" do
  			visit root_path
  			page.should have_content('Pending Trades')
  		end

  	end
end
