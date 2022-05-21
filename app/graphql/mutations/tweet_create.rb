module Mutations
  class TweetCreate < Mutations::BaseMutation
    argument :message, String

    field :tweet, Types::TweetType

    def resolve(message:)
      tweet = Types::TweetType.create(message: message)

      { tweet: tweet.id }
    end
  end
end
