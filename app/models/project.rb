class Project < ActiveRecord::Base
  has_attached_file :preview, styles: { thumbnail: "300x200#", featured: "600x450#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/

  alias_attribute :image, :screenshot

  scope :sort_featured, -> { order(featured: :desc) }

  def blurb
    # May implement conditionals later.
    tagline
  end
end
