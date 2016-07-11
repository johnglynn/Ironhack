class ConcertsController < ApplicationController

	def index

		@concerts = Concert.all
		@dailys = @concerts.where(date: DateTime.now.beginning_of_day..DateTime.now.end_of_day)
		@monthlys = @concerts.where(date: Date.current..(Date.current + 30.days))
		
		render :index
	end	

	def show

		@the_concert = Concert.find(params[:id])
		render :show

	end	

	def new

		@the_concert = Concert.new
		render :new
	end

	def create
		
		@the_concert = Concert.new(
			:artist => params[:concert][:artist],
			:venu => params[:concert][:venu],
			:city => params[:concert][:city],
			:date => params[:concert][:date],
			:price => params[:concert][:price],
			:description => params[:concert][:description])
		@the_concert.save

		redirect_to "/concerts/#{@the_concert.id}"

	end	
end
