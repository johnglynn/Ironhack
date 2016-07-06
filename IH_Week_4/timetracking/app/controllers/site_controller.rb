class SiteController < ApplicationController
	def home
		render 'home' #name of view template
	end
	
	def display_name
		@name = params[:the_name]
		render "display_name"
	end	

	def calculator
		render 'calculator'
	end	

	def calculate
		@num1 = params[:first_num].to_f
		@num2 = params[:second_num].to_f
		@result = @num1 + @num2

		render 'calculate'
	end	
end
