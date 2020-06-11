class HomeController < ApplicationController
    #skip_before_action :authenticate_user!  
    def index
        @experiences = Experience.where(show: true).paginate(page: params[:page], per_page: 20)
        #@experiences = Experience.all.where(show: true)
        @educations = Education.all.where(show: true)
    end

    def create
    
    end
end