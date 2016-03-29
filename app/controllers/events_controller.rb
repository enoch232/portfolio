class EventsController < ApplicationController
	def index
		@events = Event.all.order("created_at DESC")
	end
	def new 
	end
	def create
	end
	def edit
	end
	def update
	end
	def destroy
	end
	private
	def event_find
		@event = Event.find(params[:id])
	end

	def event_params
		params.require(:event).permit( :title, :detail )
	end

end
