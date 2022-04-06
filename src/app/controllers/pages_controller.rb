class PagesController < ApplicationController
    before_action :authenticate_user!, only: [:restricted] # check are you logged in before go to restricted
   
    def home

    end
    
    def restricted

    end

end
