class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:webhook]
    def success
        @listing = Listing.find(params[:id])
        #@listing.sold = true 
    end

    # url go to endpoint set up on strip 


  


    def webhook 
        payment_intent_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_intent_id)
        listing_id = payment.metadata.listing_id 
        pp payment.charges.data[0].receipt_url
        @listing = Listing.find(listing_id)
        @listing.update(sold: true)
        
     end 

end
 
      