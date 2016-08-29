class AboutController < ApplicationController
  def index
    @staff = Staff.all.joins(:group).
      select('groups.*, staffs.*').
      sort_by{ |s| s.position.to_i }.
      sort_by{ |s| s.group.position.to_i }.
      group_by(&:title)
  end

  def show
    @staff = Staff.find(params[:id])
  end
end
