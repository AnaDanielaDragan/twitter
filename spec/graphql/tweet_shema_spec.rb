require "rails_helper"

RSpec.describe TwitterSchema do
  it 'creates a tweet' do
    query_string = <<-GRAPHQL
      mutation($input: TweetCreateInput!) {
          tweetCreate(input: $input) {
            tweet {
                id
            }
        }
    }
    GRAPHQL

  variables = {
    "input": {
      "attributes": {
        "content": "Best thing I found in a while: https://12ft.io/"
      }
    }
  }

  result = TwitterSchema.execute(query_string, variables: variables)

  expect(result["data"]["tweetCreate"]["tweet"]["id"]).not_to be_nil
  end
end
