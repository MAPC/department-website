class ToolsController < ApplicationController
  add_breadcrumb "Home", :root_path
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
    add_breadcrumb "Tools", :tools_path
  end
end
