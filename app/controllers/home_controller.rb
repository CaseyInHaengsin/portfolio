class HomeController < ApplicationController
    #skip_before_action :authenticate_user!  
    def index
        @experiences = Experience.where(show: true).limit(10)
        #@experiences = Experience.all.where(show: true)
        @educations = Education.where(show: true).limit(10)
    end

    def create
    
    end
end