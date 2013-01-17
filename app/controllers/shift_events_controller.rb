class ShiftEventsController < ApplicationController
  # GET /shift_events
  # GET /shift_events.json
  def index
    @shift_events = ShiftEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shift_events }
    end
  end

  # GET /shift_events/1
  # GET /shift_events/1.json
  def show
    @shift_event = ShiftEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shift_event }
    end
  end

  # GET /shift_events/new
  # GET /shift_events/new.json
  def new
    @shift_event = ShiftEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shift_event }
    end
  end

  # GET /shift_events/1/edit
  def edit
    @shift_event = ShiftEvent.find(params[:id])
  end

  # POST /shift_events
  # POST /shift_events.json
  def create
    @shift_event = ShiftEvent.new(params[:shift_event])

    respond_to do |format|
      if @shift_event.save
        format.html { redirect_to @shift_event, notice: 'Shift event was successfully created.' }
        format.json { render json: @shift_event, status: :created, location: @shift_event }
      else
        format.html { render action: "new" }
        format.json { render json: @shift_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shift_events/1
  # PUT /shift_events/1.json
  def update
    @shift_event = ShiftEvent.find(params[:id])

    respond_to do |format|
      if @shift_event.update_attributes(params[:shift_event])
        format.html { redirect_to @shift_event, notice: 'Shift event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shift_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_events/1
  # DELETE /shift_events/1.json
  def destroy
    @shift_event = ShiftEvent.find(params[:id])
    @shift_event.destroy

    respond_to do |format|
      format.html { redirect_to shift_events_url }
      format.json { head :no_content }
    end
  end
end
