class WelcomeController < ApplicationController
  def index
    @groups = Group.all.includes(:services)
    @projects = Project.sort_featured.limit(5)
  end
end
