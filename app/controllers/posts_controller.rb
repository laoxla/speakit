class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
       redirect_to root_path
    else
      render :new
    end
  end


  def edit
    @post = Post.find params[:id]
  end

   def update
     @post = Post.find params[:id]
     if @post.update post_params
       redirect_to post_path(id @post.id)
     else
       render :edit
     end
     end

  def delete
   @post = Post.find params[:id]
   @post.destroy
   redirect_to root_path
  end

  def post_params
     params.require(:post).permit(:title, :body, :created_at)
  end

end
