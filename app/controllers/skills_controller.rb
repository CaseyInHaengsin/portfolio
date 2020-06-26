class SkillsController < ApplicationController
    before_action :set_skill, only: [:edit, :update, :show, :destroy]
    def index
        @skills = Skill.paginate(page: params[:page], per_page: 20)
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
    
    def edit
        if @skill.update(skill_params)
            redirect_to @skill
        else
            render 'edit'
        end
    end
    
    def update
        
    end

    private
    def skill_params
        params.require(:skill).permit(:skill, :show)
    end
    
    def set_skill
        @skill = Skill.friendly.find(params[:id])
    end
end