class EducationsController < ApplicationController
    before_action :set_education, only: [:edit, :update, :show, :destroy]
    
    def index
    end

    def new
        @education = Education.new
    end

    def create
        @education = Education.new(education_params)
    end
    private
    def education_params
        params.require(:education).permit(:place, :study_focus, :show)
    end

end