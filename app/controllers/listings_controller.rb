class ListingsController < ApplicationController


  def index
    @listings_search = Listing.search(params[:search])
    @listings = @listings_search.reverse
  end

  def edit
    @listing = Listing.find(params[:id])
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
  		flash[:notice] = "Posted successfully"
  		redirect_to root_url
  	else
  		render "new"
  	end
  end

  def destroy
    @user = current_user
    @listing = Listing.find(params[:id])
    @listing.destroy
    flash[:notice] = "Listing deleted"
    redirect_to user_path(@user)
  end

private
	def listing_params
		params.require(:listing).permit(:name, :description, :price, :city, :bundle_type, :for_sale, :for_trade, :for_donation, :category_id, :photo1, :photo2)
	end
end
