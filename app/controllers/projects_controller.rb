class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @tools = Tool.limit(3)
  end

  def show
    @project = Project.find(params[:id])
  end
end
