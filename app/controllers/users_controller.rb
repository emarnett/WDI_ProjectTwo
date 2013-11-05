class UsersController < ApplicationController

  def edit
  	@current_user = current_user
  	if @current_user.profile_name == params[:profile_name]
  		render :edit
  	else
  		redirect_to root_url
  	end
  end

  def update
  	@current_user = current_user
  	# @current_user.write_attributes(user_params)
   #  @current_user.update_attributes(user_params)
    # @current_user.image = params[:user][:image]
    # @current_user.update(user_params)

    # puts @current_user.inspect
    # puts @current_user.errors.inspect

    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :profile_name, :city, :country, :profession, :image
    )
  end


end