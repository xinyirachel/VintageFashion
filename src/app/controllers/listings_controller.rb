class ListingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  #This before action secures listings 
  before_action :authorize_user, only: [:edit, :update, :destroy]
  before_action :set_form_vars, only: [:new, :edit]

  def index
    @listings = Listing.all
  end

  def show
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email:current_user && current_user.email, 
      line_items: [
        {
          name: @listing.title,
          description: @listing.description,
          amount: @listing.price, 
          currency: 'aud',
          quantity: 1
        }
      ],
      payment_intent_data: {
        metadata: {
          user_id: current_user && current_user.id, 
          listing_id: @listing.id
        }
      },
      success_url: "#{root_url}payments/success/#{@listing.id}",
      cancel_url: root_url
    )

    @session_id = session.id
    
  end

  # def show
  #   @listing = Listing.find(params[:id])
  # end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.new(listing_params) #This method interacts with DB to create a new entry of listing
    if @listing.save 
      redirect_to @listing, notice: "New item created!"
    else
      pp @listing.errors
      set_form_vars
      render "new", notice: "An error occurred!"
    end

  end

  def edit

  end

  def update

    @listing.update(listing_params)
    if @listing.save 
      redirect_to @listing, notice: "Updated!"
    else
      pp @listing.errors
      set_form_vars
      render "edit", notice: "An error occurred."
    end 

  end

  def destroy
    @listing.destroy
    redirect_to listings_path, notice: "Deleted!"

  end

  private

  def listing_params
    params.require(:listing).permit(:title, :price, :category_id, :condition, :description, :picture)
  end

  def authorize_user 
    if @listing.user_id != current_user.id
      flash[:alert] = "Unauthorized User!"
      redirect_to listings_path
    end 
  end




  def set_listing
    @listing = Listing.find(params[:id])

  end

  def set_form_vars
    @categories = Category.all
    @conditions = Listing.conditions.keys
   
  end

end
