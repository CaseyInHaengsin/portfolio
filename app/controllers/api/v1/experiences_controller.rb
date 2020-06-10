class Api::V1::ExperiencesController < ApiController
    before_action :set_experience, only: [:show]
    
    def index
      @experiences = Experience.paginate(page: params[:page], per_page: 20)
      render json: @experiences.as_json
    end
    
    def show
    end


    private

    def set_experience
      @experience = Experience.find(params[:id])
    end
end