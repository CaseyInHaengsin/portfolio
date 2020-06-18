class Api::V1::ProjectsController < ApiController
    before_action :set_project, only: [:show]
    def index
        @projects = Project.paginate(page: params[:page], per_page: 20)
        render json: @projects.as_json
    end

    def show
    end

    private
    def set_project
        @project = Project.find(params[:id])
    end
end