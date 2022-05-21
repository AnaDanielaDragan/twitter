# frozen_string_literal: true

module Types
  class TweetType < Types::BaseObject
    field :uuid, String
    field :message, String
    field :resources, [Types::ResourceDescriptionType]
  end
end
