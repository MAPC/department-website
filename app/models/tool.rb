class Tool < ActiveRecord::Base
  has_attached_file :screenshot, styles: { thumbnail: "604x453>", large: "800x600>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\Z/

  default_scope { order(:position) }

  alias_attribute :image, :screenshot
end
