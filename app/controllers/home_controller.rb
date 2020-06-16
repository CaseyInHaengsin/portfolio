class HomeController < ApplicationController
    #skip_before_action :authenticate_user!  
    def index
        @experiences = Experience.where(show: true).limit(10)
        
        @educations = Education.where(show: true).limit(3)
        
        @skills = Skill.where(show: true).limit(13)
    end

    def create
    
    end
end