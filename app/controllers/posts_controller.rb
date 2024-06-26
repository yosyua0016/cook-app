# controllers/posts_controller.rb
class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, notice: '投稿が作成されました。'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: '投稿が更新されました。'
    else
      # バリデーションエラーメッセージを表示する
      puts @post.errors.full_messages
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: '投稿が削除されました。'
  end

  def show

  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :category_id, :image, :comment).merge(user_id: current_user.id)
  end
end
