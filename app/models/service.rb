class Service < ActiveRecord::Base
  default_scope { order('position ASC') }
  
  belongs_to :group
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :tools
  has_and_belongs_to_many :datasets

end
