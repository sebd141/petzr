class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      sql_query = " \
        OR users.location ILIKE :query \
        "
        @users = User.near("%#{params[:query]}%", 4)
        if @users.empty?
          @users = User.where(pet_sitters_status: true).order("created_at desc")
        else
          @users = User.near("%#{params[:query]}%", 4)
      end
    else
      @users = User.where(pet_sitters_status: true).order("created_at desc")
    end

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
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
    params.require(:user).permit(:description, :short_desc, :location, { type_of_pet: [] }, { type_of_service: [] }, :price, :photo, :pet_sitters_status)
  end
end
