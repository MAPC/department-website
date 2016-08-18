class GroupsController < ApplicationController
  def show
    @group = Group.find(params[:id])
    # add_breadcrumb "Groups"
  end
end
