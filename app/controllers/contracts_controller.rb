class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def show
    @contract = Contract.find(params[:id])
    @post = Post.new
  end

  def new
    @user = current_user
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @user = current_user
    @contract.user = @user
    @pet_sitter = User.find(params[:user_id])
    @contract.pet_sitter = @pet_sitter
    if @contract.save
      # send mail to pet sitter that contract needs answer
      # mail = UserMailer.with(user: @pet_sitter).notification
      # mail.deliver_now
      mail = UserMailer.with(user: @pet_sitter).notification
      mail.deliver_now
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.update(contract_params)
    redirect_to contract_path(@contract)
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.user = current_user
    @contract.destroy
    redirect_to dashboard_path
  end

  def accept
    @accept = Contract.find(params[:id])
    @accept.update_attribute(:status, true)
    # UserMailer.with(user: current_user).notification.deliver_now
    redirect_to dashboard_path
  end

  def decline
    @decline = Contract.find(params[:id])
    @decline.update_attribute(:status, false)
    redirect_to dashboard_path
  end

  private

  def contract_params
    params.require(:contract).permit(:start_date, :end_date, :description, :status)
  end
end
