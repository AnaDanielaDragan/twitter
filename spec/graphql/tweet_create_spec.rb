require 'rails_helper'

RSpec.describe Mutations::TweetCreate, type: :request do
  let(:mutation) do
    <<~GQL
      mutation($input: TweetCreateInput!) {
        tweetCreate(input: $input) {
            tweet {
              uuid
          }
        }
      }
    GQL
  end
  let(:params) do
    {
      query: mutation,
      variables: {
        input: {
          message: 'Best thing I found in a while: https://12ft.io/'
        }
      }
    }
  end

  it 'responds with ok' do
    post '/graphql', params: params

    expect(response).to have_http_status(:ok)
  end

  it 'responds with correct body' do
    post '/graphql', params: params

    json_response = JSON.parse(response.body, symbolize_names: true)
    pp json_response
    expect(json_response[:tweet]).to include(hash_including({
                                                              uuid: '1231-1231-1231-1231'
                                                            }))
  end
end
