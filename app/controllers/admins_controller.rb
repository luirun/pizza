class AdminsController < ApplicationController


	def index
		@slider = Slider.all
		@box_published = Box.where(:published => "y")
		@box_unpublished = Box.where(:published => "n")
	end

end