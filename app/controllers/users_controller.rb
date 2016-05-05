class UsersController < Clearance::UsersController

	def show
		@user = User.new(params[:user])
	end

	private 
	def user_from_params
		user_params = params[:user] || Hash.new
		first_name = user_params.delete(:first_name)
		last_name = user_params.delete(:last_name)
		gender = user_params.delete(:gender)
		birthdate = user_params.delete(:birthdate)
		contact_num = user_params.delete(:contact_num)
		description = user_params.delete(:description)
		country = user_params.delete(:country)
		email = user_params.delete(:email)
		password = user_params.delete(:password)

		# assigned those data into Clearance object 
		Clearance.configuration.user_model.new(user_params).tap do |user|
			user.first_name = first_name
			user.last_name = last_name
			user.gender = gender
			user.birthdate = birthdate
			user.contact_num = contact_num
			user.description = description
			user.country = country
			user.email = email
			user.password = password
		end
	end

	# sanitize the user_params to allow these data field to store in the database
	def permit_params
		params.require(:user).permit(:first_name, :last_name, :gender, :birthdate, :contact_num, :description, :country, :email, :password)
	end
end