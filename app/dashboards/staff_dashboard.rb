require "administrate/base_dashboard"

class StaffDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    avatar: PaperclipField,
    bio: Field::Text,
    position: Field::Number,
    role: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    group: Field::BelongsTo,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :avatar,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :avatar,
    :bio,
    :created_at,
    :updated_at,
    :group,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :avatar,
    :bio,
    :position,
    :role,
    :group,
  ].freeze

  # Overwrite this method to customize how staffs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(staff)
  #   "Staff ##{staff.id}"
  # end
end
