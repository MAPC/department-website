class Project < ActiveRecord::Base
  has_attached_file :preview, styles: { thumbnail: "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/
end
