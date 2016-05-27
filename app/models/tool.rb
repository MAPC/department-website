class Tool < ActiveRecord::Base
  has_attached_file :screenshot, styles: { thumbnail: "300x300>", large: "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\Z/

  alias_attribute :image, :screenshot
end
