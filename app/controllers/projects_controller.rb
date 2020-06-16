class ProjectsController < ApplicationController
    before_action :set_project, only: [:edit, :update, :show, :destroy]
    def index
    end
    def new
        @project = Project.new
    end

    def create
      @project = Project.new(project_params)
      if @project.save
        redirect_to @project
      else
        render 'new'
      end
    end

    private
    def project_params
      params.require(:project).permit(:title, :description, :show)
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
