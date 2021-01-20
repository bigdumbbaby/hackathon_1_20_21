class CustomersController < ApplicationController

    #/customers GET
    def index
        @customers = Customer.all 

        render json: @customers  
    end
end
