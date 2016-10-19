class Service < ActiveRecord::Base

  default_scope { order position: :asc }

  belongs_to :group
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :tools
  has_and_belongs_to_many :datasets

  def to_param
    "#{id}-#{title.parameterize}"
  end

end
