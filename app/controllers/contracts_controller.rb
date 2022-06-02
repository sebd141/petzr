class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def new
    @user = current_user
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @user = current_user
    @contract.user = @user
    if @contract.save
      redirect_to contract_path(@user)
    else
      render :new
    end
  end

  def edit
    @contract = Contract.find(params[:id])
    @contract.user = current_user
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
    redirect_to contract_path(current_user)
  end

  def accept
    @accept = Contract.find(params[:id])
    @accept.user = current_user
    @accept.update_attribute(:status, true)
    redirect_to contract_path(current_user)
  end

  def decline
    @decline = Contract.find(params[:id])
    @decline.user = current_user
    @decline.update_attribute(:status, false)
    redirect_to contract_path(current_user)
  end

  private

  def contract_params
    params.require(:contract).permit(:date, :description, :status)
  end
end
