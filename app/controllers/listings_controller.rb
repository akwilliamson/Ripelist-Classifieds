class ListingsController < ApplicationController
  before_action :require_login

  def index
    @listings = Listing.all
  end

  def new
  	@listing = Listing.new
  end

  def create
  	@listing = Listing.new(listing_params)
  	if @listing.save
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
