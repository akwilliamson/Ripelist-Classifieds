class ListingsController < ApplicationController


  def index
    @listings = Listing.search(params[:search])
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
  	@listing = Listing.new
  end

  def create
  	@listing = Listing.new(listing_params)
  	if @listing.save
      current_user.listings << @listing
  		flash[:notice] = 'posted successfully'
  		redirect_to root_url
  	else
  		render 'new'
  	end 
  end

private
	def listing_params
		params.require(:listing).permit(:name, :description, :price, :city, :bundle_type, :for_sale, :for_trade, :for_donation, :category_id, :photo1, :photo2)
	end
end
