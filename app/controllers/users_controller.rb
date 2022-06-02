class UsersController < ApplicationController
  def index
    @users = User.all.order("created_at desc")
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def become_pet_sitter
    @user = current_user
    @user.update(pet_sitters_status: true)
     if @user.save
      redirect_to new_pet_sitter_form_path
     else
      render :edit
     end
  end


  def add_pet_sitter_details
    @user = current_user

  end
  private

  def user_params
    params.require(:user).permit(:description, :short_desc, :location, { type_of_pet: [] }, { type_of_service: [] }, :price)
  end
end
