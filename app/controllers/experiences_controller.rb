class ExperiencesController < ApplicationController
    before_action :set_experience, only: [:edit, :update, :show, :destroy]
    def index
        @experiences = Experience.paginate(page: params[:page], per_page: 20)
    end

    def new
        @experience = Experience.new
    end

    def create
        @experience = Experience.new(experience_params)
        if @experience.save
            redirect_to @experience
        else
            render 'new'
        end
    end

    private
    def experience_params
        params.require(:experience).permit(:title, :description, :work_period, :show)
    end
    
    def set_experience
        @experience = Experience.find(params[:id])
    end
end
