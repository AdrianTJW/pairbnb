class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    @user = current_user
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params)
    @listing.save
    redirect_to '/'
  end

  def destroy
  end

  def update
  end

  def edit
  end

  def show
    @listing = Listing.find_by(id: params[:id])
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :location, :email, :user_id)
  end
end
