class PagesController < ApplicationController

	def main
		@value = params[:value]
		@channel = params[:channel]
		@sample = Sample.new
		@sample.value = @value
		@sample.sensor_id = @channel
		@sample.save
		@samples = Sample.all
	end

end
