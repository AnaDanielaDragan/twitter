module Mutations
  class TweetCreate < Mutations::BaseMutation
    argument :attributes, Types::TweetCreateAttributes

    field :tweet, Types::TweetType

    def resolve(attributes:)
      tweet = Tweet.create(attributes)

      { tweet: tweet.id }
    end
  end
end
