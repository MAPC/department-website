class WelcomeController < ApplicationController
  def index
    @groups = Group.all.includes(:services)
    @projects = Project.sort_featured.limit(3)
  end
end
