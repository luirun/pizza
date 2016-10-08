class VisitorsController < ApplicationController

	def index
		@slider = Slider.all
		@box = Box.all
		@promotions = Post.where(:is_promotion => "y").limit(3)
		@categories = Type.where(:visible => "y")
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