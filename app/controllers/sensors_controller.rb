class SensorsController < ApplicationController

	def new
		@sample = Sample.new
	end

	def create
		@sample = Sample.new(params[:sample])
		@sample.save
	end

	def push
		@value = params[:value]
		if !(!@value || @value == 0)
			@channel = params[:channel]
			@sample = Sample.new
			@sample.value = @value
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
