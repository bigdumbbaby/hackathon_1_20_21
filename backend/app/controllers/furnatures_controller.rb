class FurnaturesController < ApplicationController
    def index
        @furnatures = Furnature.all 

        render json: @furnatures
    end
end
