# frozen_string_literal: true

module Types
  class ImageType < Types::BaseObject
    field :url, String
    field :byteSize, Integer
  end
end
