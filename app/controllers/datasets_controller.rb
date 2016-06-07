class DatasetsController < ApplicationController
  def index
    @datasets = Dataset.all
  end

  def show
    @dataset = Dataset.find(params[:id])
  end
end
