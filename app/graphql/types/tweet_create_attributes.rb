# frozen_string_literal: true

module Types
  class TweetCreateAttributes < Types::BaseInputObject
    argument :content, String, "Content of the tweet"
  end
end
