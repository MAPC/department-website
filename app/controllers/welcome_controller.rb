class WelcomeController < ApplicationController
  def index
    @groups = Group.all.includes(:services)
    @projects = Project.all
    @tools = Tool.all
  end
end
