class EventsController < ApplicationController
	before_action :event_find , only: [:destroy, :edit, :update, :show]
	before_action :authenticate_user! , only: [:new, :create, :update, :edit, :destroy]
	def index
		@events = Event.paginate(:page => params[:page], :per_page => 5).order("created_at DESC")
		#@events = Event.all.order("created_at DESC")
	end

	def show
	end
	def new 
		@event = Event.new
	end
	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to root_path
		else
			render :new
		end
	end
	def edit
	end
	def update
		if @event.update(event_params)
			redirect_to events_path
		else
			render :edit
		end
	end
	def destroy
		@event.destroy
		redirect_to events_path
	end
	private
	def event_find
		@event = Event.find(params[:id])
	end

	def event_params
		params.require(:event).permit( :title, :detail )
	end

end
