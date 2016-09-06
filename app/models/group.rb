class Group < ActiveRecord::Base
  default_scope { order('position ASC') }

  has_many :services

  def to_param
    title.parameterize
  end

end
