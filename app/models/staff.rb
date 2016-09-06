class Staff < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true
  validates :avatar, presence: true

  has_attached_file :avatar, styles: { thumbnail: "275x275#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  belongs_to :group

  def to_param
    name.parameterize
  end
end
