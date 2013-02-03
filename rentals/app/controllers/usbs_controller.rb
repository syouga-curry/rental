class UsbsController < ApplicationController
  # GET /usbs
  # GET /usbs.json
  def index
    @usbs = Usb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usbs }
    end
  end

  # GET /usbs/1
  # GET /usbs/1.json
  def show
    @usb = Usb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @usb }
    end
  end

  # GET /usbs/new
  # GET /usbs/new.json
  def new
    @usb = Usb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usb }
    end
  end

  # GET /usbs/1/edit
  def edit
    @usb = Usb.find(params[:id])
  end

  # POST /usbs
  # POST /usbs.json
  def create
    @usb = Usb.new(params[:usb])

    respond_to do |format|
      if @usb.save
        format.html { redirect_to @usb, notice: 'Usb was successfully created.' }
        format.json { render json: @usb, status: :created, location: @usb }
      else
        format.html { render action: "new" }
        format.json { render json: @usb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usbs/1
  # PUT /usbs/1.json
  def update
    @usb = Usb.find(params[:id])

    respond_to do |format|
      if @usb.update_attributes(params[:usb])
        format.html { redirect_to @usb, notice: 'Usb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usbs/1
  # DELETE /usbs/1.json
  def destroy
    @usb = Usb.find(params[:id])
    @usb.destroy

    respond_to do |format|
      format.html { redirect_to usbs_url }
      format.json { head :no_content }
    end
  end
end
