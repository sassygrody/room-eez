class ChoresController < ApplicationController
	def show
		@chore = Chore.find(params[:id])
	end
end
