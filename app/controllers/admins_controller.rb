class AdminsController < ApplicationController


	def index
		@slider = Slider.all
	end

end