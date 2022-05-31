class PostsController < ApplicationController
  before_action :set_contract, only: %i[create new]
  before_action :set_post, only: %i[update show edit destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @user = current_user
    if @post.save
      redirect_to contract_path(@contract_id)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(post_params)
    redirect_to contract_path(@post.contract)
  end

  def destroy
    @post.destroy
    redirect_to contract_path(@post.contract)
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def set_contract
    @contract_id = Contract.find(params[:contract_id])
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
