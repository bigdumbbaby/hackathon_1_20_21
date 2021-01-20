class FurnaturesController < ApplicationController
    def index
        @furnatures = Furnature.all 

        render json: @furnatures, include: :customer
    end

    def create 
        @furnature = Furnature.create({
            name: params[:type],
            size: params[:size],
            customer_id: params[:customer_id]
        })

        render json: @furnature
    end
end
