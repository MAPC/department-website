class WelcomeController < ApplicationController
  def index
    @groups = Group.all.includes(:services)
    @projects = Project.limit(3)
  end
end
