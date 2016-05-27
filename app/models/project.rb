class Project < ActiveRecord::Base
  has_attached_file :preview, styles: { thumbnail: "604x453>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/

  alias_attribute :image, :screenshot
end
