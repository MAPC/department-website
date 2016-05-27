class ServicesController < ApplicationController

  add_breadcrumb "home", :root_path
  # add_breadcrumb ""

  def show
    @service = Service.find(params[:id])
  end
end
