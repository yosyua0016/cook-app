require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "validations" do
    it "should validate presence of title" do
      post = Post.new(title: nil)
      post.valid?
      expect(post.errors[:title]).to include("can't be blank")
    end

    it "should validate presence of image" do
      post = Post.new(image: nil)
      post.valid?
      expect(post.errors[:image]).to include("can't be blank")
    end

    it "should validate presence of category_id" do
      post = Post.new(category_id: nil)
      post.valid?
      expect(post.errors[:category_id]).to include("can't be blank")
    end

    it "should validate presence of comment" do
      post = Post.new(comment: nil)
      post.valid?
      expect(post.errors[:comment]).to include("can't be blank")
    end
  end
end
