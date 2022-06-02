class UsersController < ApplicationController
  def index
    @users = User.all.order("created_at desc")
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end

  def become_pet_sitter
    @user = current_user
    @user.update(pet_sitters_status: true)
    redirect_to new_pet_sitter_form_path
  end

  def add_pet_sitter_details
    @user = current_user
  end
end
