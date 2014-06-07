class EventsController < ApplicationController
	def show
		@event = Event.find(params[:id])
	end

	def participate
		redirect_to event_path(@event)
	end

	def udpate

	end
end
