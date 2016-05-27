class Service < ActiveRecord::Base
  default_scope { order('position ASC') }
  
  belongs_to :group

  # acts_as_list scope: :group
end
