class ProfilesController < ApplicationController

	def show
  	@current_user = current_user
  	@user_profile = User.find_by(profile_name: params[:profile_name])
  	@users = User.all.entries
    @recommendations = Recommendation.where(profile_name: params[:profile_name]).sort_by { |h| h[:created_at] }.reverse!
  end

  def edit
    redirect_to profile_url(@user_profile.profile_name) unless @current_user == @user_profile
  	@current_user = current_user 
  	@user_profile = User.find_by(profile_name: params[:profile_name])
    @users = User.all.entries
    @recommendations = Recommendation.where(profile_name: params[:profile_name]).sort_by { |h| h[:created_at] }.reverse!
  	
  end

  def update
    @current_user = current_user 
    @user_profile = User.find_by(profile_name: params[:profile_name])
    if @current_user == @user_profile
      if params[:user][:image].present?
        @user_profile.image = params[:user][:image]
      end
        @user_profile.update(user_params)
        redirect_to profile_url
    else
      if params[:user][:recommendations][:comment].present?
        @recommendation = @current_user.recommendations.create( profile_name: @user_profile.profile_name, 
                              comment: params[:user][:recommendations][:comment])
        @recommendation.save     
        flash.now[:notice] = "Recommendation added!"
        @recommendations = Recommendation.where(profile_name: params[:profile_name]).sort_by { |h| h[:created_at] }.reverse!
        respond_to do |format|
          format.js
        end
      end
    end
    
  end

  private

  def image_param
    params.require(:user).permit(
      :image
    )
  end

  def user_params
    params.require(:user).permit(
      :name, :city, :country, :profession, :image, :description
    )
  end

end