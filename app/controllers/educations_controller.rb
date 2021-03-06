class EducationsController < ApplicationController
    before_action :set_education, only: [:edit, :update, :show, :destroy]
    
    def index
        @educations = Education.paginate(page: params[:page], per_page: 20)
    end
    def show

    end

    def new
        @education = Education.new
    end

    def edit
    end

    def update
        if @education.update(education_params)
            redirect_to @education
        else
            render 'edit'
        end
    end


    def create
        @education = Education.new(education_params)
        if @education.save
            redirect_to @education
        else
            render 'new'
        end
    end
    private
    def education_params
        params.require(:education).permit(:place, :study_focus, :show)
    end

    def set_education
        @education = Education.friendly.find(params[:id])
    end

end