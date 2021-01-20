class CustomersController < ApplicationController

    #/customers GET
    def index
        @customers = Customer.all 

        render json: @customers, include: :furnatures 
    end

    def show 
        @customer = Customer.find(params[:id])
        render json: @customer, include: :furnatures
    end

    def create 
        @customer = Customer.create({
            name: params[:name],
            age: params[:age],
            moving_date: params[:moving_date]
        })

        render json: @customer
    end
end
