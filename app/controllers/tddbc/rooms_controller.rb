class Tddbc::RoomsController < ApplicationController
  # GET /tddbc/rooms
  # GET /tddbc/rooms.json
  def index
    @tddbc_rooms = Tddbc::Room.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tddbc_rooms }
    end
  end

  # GET /tddbc/rooms/1
  # GET /tddbc/rooms/1.json
  def show
    @tddbc_room = Tddbc::Room.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tddbc_room }
    end
  end

  # GET /tddbc/rooms/new
  # GET /tddbc/rooms/new.json
  def new
    @tddbc_room = Tddbc::Room.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tddbc_room }
    end
  end

  # GET /tddbc/rooms/1/edit
  def edit
    @tddbc_room = Tddbc::Room.find(params[:id])
  end

  # POST /tddbc/rooms
  # POST /tddbc/rooms.json
  def create
    @tddbc_room = Tddbc::Room.new(params[:tddbc_room])

    respond_to do |format|
      if @tddbc_room.save
        format.html { redirect_to @tddbc_room, notice: 'Room was successfully created.' }
        format.json { render json: @tddbc_room, status: :created, location: @tddbc_room }
      else
        format.html { render action: "new" }
        format.json { render json: @tddbc_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tddbc/rooms/1
  # PUT /tddbc/rooms/1.json
  def update
    @tddbc_room = Tddbc::Room.find(params[:id])

    respond_to do |format|
      if @tddbc_room.update_attributes(params[:tddbc_room])
        format.html { redirect_to @tddbc_room, notice: 'Room was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tddbc_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tddbc/rooms/1
  # DELETE /tddbc/rooms/1.json
  def destroy
    @tddbc_room = Tddbc::Room.find(params[:id])
    @tddbc_room.destroy

    respond_to do |format|
      format.html { redirect_to tddbc_rooms_url }
      format.json { head :ok }
    end
  end
end
