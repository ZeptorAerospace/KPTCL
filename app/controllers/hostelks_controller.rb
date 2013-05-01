class HostelksController < ApplicationController
  # GET /hostelks
  # GET /hostelks.json
  def index
    @hostelks = Hostelk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostelks }
    end
  end

  # GET /hostelks/1
  # GET /hostelks/1.json
  def show
    @hostelk = Hostelk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hostelk }
    end
  end

  # GET /hostelks/new
  # GET /hostelks/new.json
  def new
    @hostelk = Hostelk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hostelk }
    end
  end

  # GET /hostelks/1/edit
  def edit
    @hostelk = Hostelk.find(params[:id])
  end

  # POST /hostelks
  # POST /hostelks.json
  def create
    @hostelk = Hostelk.new(params[:hostelk])

    respond_to do |format|
      if @hostelk.save
        format.html { redirect_to @hostelk, notice: 'Hostelk was successfully created.' }
        format.json { render json: @hostelk, status: :created, location: @hostelk }
      else
        format.html { render action: "new" }
        format.json { render json: @hostelk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostelks/1
  # PUT /hostelks/1.json
  def update
    @hostelk = Hostelk.find(params[:id])

    respond_to do |format|
      if @hostelk.update_attributes(params[:hostelk])
        format.html { redirect_to @hostelk, notice: 'Hostelk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hostelk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostelks/1
  # DELETE /hostelks/1.json
  def destroy
    @hostelk = Hostelk.find(params[:id])
    @hostelk.destroy

    respond_to do |format|
      format.html { redirect_to hostelks_url }
      format.json { head :no_content }
    end
  end
end
