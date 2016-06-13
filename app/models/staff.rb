class Staff < ActiveRecord::Base
  has_attached_file :avatar, styles: { thumbnail: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  belongs_to :group
end
