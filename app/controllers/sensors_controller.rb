class SensorsController < ApplicationController

	def push
		@value = params[:value]
		@channel = params[:channel]
		@sample = Sample.new
		@sample.value = @value
		@sample.sensor_id = @channel
		@sample.save
	end

	def index
		@samples = Sample.all
	end

end
