class InventoriesController < ApplicationController

def show
	@user = User.find(params[:id])

	respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @user }
	end
end

def index
	@inventories = Inventory.all

	respond_to do |format|
	     format.html  # index.html.erb
	     format.json  { render :json => @inventories }
	 end



end

=begin
def new
	@inventory = Inventory.new()

	respond_to do |format|
		format.html
	end
end
=end


def destroy
	    @inventory = Inventory.find(params[:id])
	    @inventory.destroy

	    respond_to do |format|
	      format.html { redirect_to inventories_path }
	      format.json { head :inventory }
		end
	end

end
