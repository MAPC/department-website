class WelcomeController < ApplicationController
  def index
    @groups = Group.includes(:services).all
    @projects = Project.limit(5)
  end
end
