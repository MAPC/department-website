class GroupsController < ApplicationController

  def show
    @group = Group.find_by title: params[:id].capitalize
  end

end
