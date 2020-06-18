class Api::V1::ProjectsController < ApiController
    before_action :set_project, only: [:show]


    private
    def set_project
        @project = Project.find(params[:id])
    end
end