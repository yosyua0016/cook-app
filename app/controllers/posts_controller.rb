class PostsController < ApplicationController
  def index
    @posts = Post.all # すべての投稿を取得する例
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
