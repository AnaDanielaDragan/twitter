# frozen_string_literal: true

module Types
  class TweetType < Types::BaseObject
    field :message, String
    field :resources, [Types::ResourceDescriptionType]
  end
end
