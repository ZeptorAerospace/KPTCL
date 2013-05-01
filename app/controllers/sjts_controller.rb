class SjtsController < ApplicationController
  # GET /sjts
  # GET /sjts.json
  def index
    @sjts = Sjt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sjts }
    end
  end

  # GET /sjts/1
  # GET /sjts/1.json
  def show
    @sjt = Sjt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sjt }
    end
  end

  # GET /sjts/new
  # GET /sjts/new.json
  def new
    @sjt = Sjt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sjt }
    end
  end

  # GET /sjts/1/edit
  def edit
    @sjt = Sjt.find(params[:id])
  end

  # POST /sjts
  # POST /sjts.json
  def create
    @sjt = Sjt.new(params[:sjt])

    respond_to do |format|
      if @sjt.save
        format.html { redirect_to @sjt, notice: 'Sjt was successfully created.' }
        format.json { render json: @sjt, status: :created, location: @sjt }
      else
        format.html { render action: "new" }
        format.json { render json: @sjt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sjts/1
  # PUT /sjts/1.json
  def update
    @sjt = Sjt.find(params[:id])

    respond_to do |format|
      if @sjt.update_attributes(params[:sjt])
        format.html { redirect_to @sjt, notice: 'Sjt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sjt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sjts/1
  # DELETE /sjts/1.json
  def destroy
    @sjt = Sjt.find(params[:id])
    @sjt.destroy

    respond_to do |format|
      format.html { redirect_to sjts_url }
      format.json { head :no_content }
    end
  end
end
