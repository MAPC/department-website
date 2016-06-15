class ServicesController < ApplicationController

  add_breadcrumb "Home", :root_path

  def show
    @service = Service.find(params[:id])
    add_breadcrumb @service.group.title, group_path(@service.group)
  end
end
