class Dataset < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :services

  alias_attribute :desc, :bio
end
