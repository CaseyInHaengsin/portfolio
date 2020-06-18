class ProjectsController < ApplicationController
    before_action :set_project, only: [:edit, :update, :show, :destroy]
    def index
      @projects = Project.paginate(page: params[:page], per_page: 20)
    end
    def new
        @project = Project.new
    end
   
  def edit
  end
  
  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
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
