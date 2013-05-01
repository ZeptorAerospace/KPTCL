class HostelnsController < ApplicationController
  # GET /hostelns
  # GET /hostelns.json
  def index
    @hostelns = Hosteln.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostelns }
    end
  end

  # GET /hostelns/1
  # GET /hostelns/1.json
  def show
    @hosteln = Hosteln.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hosteln }
    end
  end

  # GET /hostelns/new
  # GET /hostelns/new.json
  def new
    @hosteln = Hosteln.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hosteln }
    end
  end

  # GET /hostelns/1/edit
  def edit
    @hosteln = Hosteln.find(params[:id])
  end

  # POST /hostelns
  # POST /hostelns.json
  def create
    @hosteln = Hosteln.new(params[:hosteln])

    respond_to do |format|
      if @hosteln.save
        format.html { redirect_to @hosteln, notice: 'Hosteln was successfully created.' }
        format.json { render json: @hosteln, status: :created, location: @hosteln }
      else
        format.html { render action: "new" }
        format.json { render json: @hosteln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostelns/1
  # PUT /hostelns/1.json
  def update
    @hosteln = Hosteln.find(params[:id])

    respond_to do |format|
      if @hosteln.update_attributes(params[:hosteln])
        format.html { redirect_to @hosteln, notice: 'Hosteln was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hosteln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostelns/1
  # DELETE /hostelns/1.json
  def destroy
    @hosteln = Hosteln.find(params[:id])
    @hosteln.destroy

    respond_to do |format|
      format.html { redirect_to hostelns_url }
      format.json { head :no_content }
    end
  end
end
