# frozen_string_literal: true

module Types
  class ResourceDescriptionType < Types::BaseObject
    field :title, String
    field :description, String
    field :url, String
    field :image, Types::ImageType
  end
end
  