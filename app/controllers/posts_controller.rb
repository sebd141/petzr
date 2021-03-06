class PostsController < ApplicationController
  before_action :set_contract, only: %i[create new]
  before_action :set_post, only: %i[update show edit]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @contract = Contract.find(params[:contract_id])
    @post = Post.new(post_params)
    @post.contract = @contract
    @post.user = current_user
    if @post.save
      ContractChannel.broadcast_to(
        @contract,
        render_to_string(partial: "post", locals: { post: @post })
      )
      head :ok
    else
      render "contract/show"
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
    params.require(:post).permit(:content, :photo)
  end

  def set_contract
    @contract_id = Contract.find(params[:contract_id])
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
