class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @user = current_user
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
    @pet.user = current_user
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
    @pet.user = current_user
  end

  def update
    @pet.update(pet_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.user = current_user
    @pet.destroy
    redirect_to user_path(current_user)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :breed)
  end
end
