class Api::V1::EducationsController < ApiController
    before_action :set_education, only: [:show]
    def index
        @educations = Education.paginate(page: params[:page], per_page: 20)
        render json: @educations.as_json
    end

    def show
    end

    private
    
    def set_education
        @education = Education.find(params[:id])
    end


end
