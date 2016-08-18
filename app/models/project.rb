class Project < ActiveRecord::Base
  has_attached_file :preview, styles: { thumbnail: "300x200#", featured: "600x450#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/

  validates :preview, presence: true

  alias_attribute :image, :screenshot

  scope :sort_featured, -> { order(featured: :desc) }

  has_one :tool
  has_one :dataset

  def self.default_scope
    order(featured: :desc).order(position: :asc)
  end

  def blurb
    # May implement conditionals later.
    tagline
  end
end
