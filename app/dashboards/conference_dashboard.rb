require "administrate/base_dashboard"

class ConferenceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    topics: Field::HasMany,
    id: Field::Number,
    uuid: Field::String,
    name: Field::String,
    url: Field::String,
    city: Field::String,
    country: Field::String,
    startDate: Field::String,
    endDate: Field::String,
    cfpStartDate: Field::String,
    cfpEndDate: Field::String,
    cfpUrl: Field::String,
    twitter: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :topics,
    :id,
    :uuid,
    :name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :topics,
    :id,
    :uuid,
    :name,
    :url,
    :city,
    :country,
    :startDate,
    :endDate,
    :cfpStartDate,
    :cfpEndDate,
    :cfpUrl,
    :twitter,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :topics,
    :uuid,
    :name,
    :url,
    :city,
    :country,
    :startDate,
    :endDate,
    :cfpStartDate,
    :cfpEndDate,
    :cfpUrl,
    :twitter,
  ].freeze

  # Overwrite this method to customize how conferences are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(conference)
  #   "Conference ##{conference.id}"
  # end
end