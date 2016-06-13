class AboutController < ApplicationController
  def index
    @staff = Staff.all.joins(:group).select('staffs.*, groups.title').sort_by(&:position).group_by(&:title)
  end
end
