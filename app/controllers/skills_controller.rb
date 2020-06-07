class SkillsController < ApplicationController
    
    def index
    end

    def new
     @skill = Skill.new
    end

    def create
        @skill = Skill.new(skill_params)
    end

    private
    def skill_params
        params.require(:skill).permit(:skill, :show)
    end
end