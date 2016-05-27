class Group < ActiveRecord::Base
  default_scope { order('position ASC') }

  has_many :services

end
