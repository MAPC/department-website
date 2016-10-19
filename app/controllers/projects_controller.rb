class ProjectsController < ApplicationController

  add_breadcrumb "Home", :root_path

  def index
    @projects = Project.all
    @tools = Tool.limit(3)
  end

  def show
    @project = Project.find params[:id].partition('-').first
    add_breadcrumb "Our Work", :projects_path
  end

end
