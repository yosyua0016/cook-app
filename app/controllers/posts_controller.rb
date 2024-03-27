class PostsController < ApplicationController
  def index
    @posts = Post.all # すべての投稿を取得する例
  end
end
