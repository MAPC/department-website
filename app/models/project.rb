class Project < ActiveRecord::Base
  has_attached_file :preview, styles: { thumbnail: "300x200#", featured: "600x450#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/

  validates :preview, presence: true

  alias_attribute :image, :screenshot

  has_one :tool
  has_one :dataset
  has_and_belongs_to_many :services

  def self.default_scope
    order featured: :desc, position: :asc
  end

  def blurb
    # May implement conditionals later.
    tagline
  end

  def to_param
    "#{id}-#{title.parameterize}"
  end
end
