class EventsController < ApplicationController
	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = current_user.created_events.create(params_event)
		@event.attendees << current_user

		respond_to do |format|
			format.html {redirect_to current_user}
			format.js {}
			# format.json { render json: @event, status: :created, location: @event}
		end
		# redirect_to current_user
	end

	def participate
		@event = Event.find_by_id(params[:id])
		@event.attendees << current_user

		redirect_to current_user
	end


	def edit
		@event = Event.find_by_id(params[:id])

	end

	def update
		@event = Event.find_by_id(params[:id])
		@event.update_attributes(params_event)

		redirect_to current_user
	end


	def destroy
		@event = Event.find_by_id(params[:id])
		@event.destroy

		redirect_to current_user
	end


	private

	def params_event
		params.require(:event).permit(:name, :description, :happen_at)
	end

end
