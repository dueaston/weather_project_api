require 'rails_helper'

RSpec.describe 'Posts API', type: :request do
  describe 'POST /posts' do
    let(:valid_attributes) { { title: 'My first post', content: 'Content of the post' } }

    context 'when the request is valid' do
      it 'creates a new post' do
        expect {
          post '/posts', params: { post: valid_attributes }
        }.to change(Post, :count).by(1)

        expect(response).to have_http_status(201)
        expect(json['title']).to eq('My first post')
        expect(json['content']).to eq('Content of the post')
      end
    end

  end

  def json
    JSON.parse(response.body)
  end
end
