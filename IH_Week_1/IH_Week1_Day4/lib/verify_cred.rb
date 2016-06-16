class Verifier
	def verify_cred(entered_user_name, entered_password)
		registered_username = "john"
		registered_password = "glynn"

		if entered_user_name == registered_username  &&
			entered_password == registered_password
			 "Credentials Correct"
		elsif 
			entered_user_name == registered_username &&
			entered_password != registered_password
			 "Password Incorrect"	
		elsif
			entered_password == registered_password &&
			entered_user_name != registered_username
			 "Username Incorrect"			
		end	

	end
end