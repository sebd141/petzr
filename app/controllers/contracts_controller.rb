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
    @contract.user = current_user
    if @contract.save
      redirect_to contracts_path(@contract)
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

  # def destroy
  #   @contract = Contract.find(params[:id])
  #   @contract.destroy
  # end

  private

  def contract_params
    params.require(:contract).permit(:date, :id_pet_sitter)
  end
end
