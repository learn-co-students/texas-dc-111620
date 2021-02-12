
class Api::V1::PaintingsController < ApplicationController
    before_action :logged_in? 
    def index
      @paintings = Painting.all
      render json: @paintings
    end
  
  
  
  end