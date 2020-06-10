class Api::V1::SkillsController < ApiController
    before_action :set_skill, only: [:show]
    
    def index
      @skills = Skill.paginate(page: params[:page], per_page: 20)
      render json: @skills.as_json
    end
    
    def show
    end


    private

    def set_skill
      @skill = Skill.find(params[:id])
    end
end