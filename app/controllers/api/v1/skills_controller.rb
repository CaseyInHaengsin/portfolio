class Api::V1::SkillsController < ApiController
    before_action :set_skill
    
    def show
    end


    private

    def set_skill
      @skill = Skill.find(params[:id])
    end
end