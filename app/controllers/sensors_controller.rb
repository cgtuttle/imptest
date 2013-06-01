class SensorsController < ApplicationController

	def new
		@sample = Sample.new
	end

	def create
		@sample = Sample.new(params[:sample])
		@sample.save
	end

	def push
		@value = Sample.new

		@value = params[:value].parsed
		@channel = params[:channel]
		
		if(@value[0] == "Avg")
			@sample = Sample.new
			@sample.value = @value[1]
			@sample.sensor_id = @channel
			@sample.save
		end
		
		while Sample.count > 25
			Sample.first.delete
		end
		render :nothing => true
	end

	def index
		@samples = Sample.all
	end

end
