class RegistrationController < ApplicationController
  
  def new
    @registrant = Registrant.find_by(id: params[:code])
    
    if @registrant && @registrant.expires_at > Time.now
      render :new
    else
      redirect_to login_url, error: "Sorry, your code has expired. Please try again."
    end
  end
  
  def create
    @registrant = Registrant.find_by(id: params[:code])

    @user = User.new(user_params)
    @user.email = @registrant.email
    # @user.avatar = params[:image]
    # @user.avatar = File.open('somewhere')
    
    if @user.save
      @registrant.destroy
      
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for registering!"
    else
      flash.now[:error] = "Something went wrong. Please check your have filled in all the fields and try again."
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(
      :name,
      :profile_name,
      :country,
      :city,
      :profession,
      :password,
      :password_confirmation,
      :avatar
    )
  end
end
