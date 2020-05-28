class SpecialDatesController < ApplicationController

    def index
        special_dates = SpecialDate.all
        render json: special_dates
    end

    def create
        
    end
end
