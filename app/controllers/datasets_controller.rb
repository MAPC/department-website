class DatasetsController < ApplicationController
  def index
    @datasets = Dataset.order(position: :asc)
  end

  def show
    @dataset = Dataset.find(params[:id])
  end
end
