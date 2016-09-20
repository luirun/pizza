class VisitorsController < ApplicationController

	def index
		@slider = Slider.all
		session.delete(:storeid)
	end
	
	def polling
		@slider = Slider.all
		# @i needed to work left and right button
		@start ||= 0
		respond_to do |format|
			format.js
		end
	end

end