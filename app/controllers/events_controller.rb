class EventsController < ApplicationController
  
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
  end
  
  def new
    @event = Event.new
  end
  
  def edit
    @event = Event.find(params[:id])  
  end
  
  def create
    
    @event = current_user.events.build(event_params)
    
    if @event.save
      format.html { redirect_to @event, notice: 'Event was successfully created.' } #redirect_to @event
      flash[:success] = "Event created"
    else
      render 'new'
    end
  end
  
  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' } #redirect_to @event
      else
        render 'edit'
      end
    end
  end  
  
  def destroy
    @event.destroy
    respond_to do |format|
      redirect_to events_url
    end
  end
  
  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end
    
    def event_params
      params.require(:event).permit(:title, :image_thumb, :venue, :when_at,
        :total_tickets, :available_tickets)
    end
end

