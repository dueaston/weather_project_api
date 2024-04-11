require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'with valid attributes' do
    it 'is valid' do
      post = Post.new(title: 'My First Post', content: 'Hello, world!')
      expect(post).to be_valid
    end
  end
end
