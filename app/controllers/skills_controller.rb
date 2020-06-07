class SkillsController < ApplicationController
    before_action :set_skill, only: [:edit, :update, :show, :destroy]
    def index
        
    end

    def new
     @skill = Skill.new
    end

    def create
        @skill = Skill.new(skill_params)
        if @skill.save
            redirect_to @skill
        else
            render 'new'
        end
    end

    def show
    
    end

    private
    def skill_params
        params.require(:skill).permit(:skill, :show)
    end
    
    def set_skill
        @skill = Skill.find(params[:id])
    end
end