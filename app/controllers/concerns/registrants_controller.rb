# class RegistrantsController < ApplicationController
# 	def index
# 		@registrants = Registrant.all.entries
# 	end

#     def show
# 	 	@registrant = Registrant.find_by(id: params[:id])
# 	end

# 	# def create
# 	# 	registrant = Registrant.create ( registrant_params )

# 	# 	if registrant
# 	# 		head :created
# 	# 	else 
# 	# 		render json: registrant_errors, status: unprocessable_entity
# 	# end

# 	# def update
# 	# 	registrant = Registrant.find_by( id: params[:id])
# 	# 	if Registrant.update_attributes ( registrant_params )
# 	# 		head :no_content
# 	# 	else
# 	# 		render json: registrant_errors, status: unprocessable_entity
# 	# end

# 	# def destroy
# 	# 	Registrant.find_by(id: params[:id]).destroy
# 	# 	head :no_content

# 	#   redirect_to registrants_url
# 	# end

# 	# def registrant_params
# 	# 	params.require(:registrant).permit (
# 	# 		:id,
# 	# 		:email,
# 	# 		:expires_at
# 	# 		)

# 	# end

# end