class HostelasController < ApplicationController
  # GET /hostelas
  # GET /hostelas.json
  def index
    @hostelas = Hostela.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hostelas }
    end
  end

  # GET /hostelas/1
  # GET /hostelas/1.json
  def show
    @hostela = Hostela.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hostela }
    end
  end

  # GET /hostelas/new
  # GET /hostelas/new.json
  def new
    @hostela = Hostela.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hostela }
    end
  end

  # GET /hostelas/1/edit
  def edit
    @hostela = Hostela.find(params[:id])
  end

  # POST /hostelas
  # POST /hostelas.json
  def create
    @hostela = Hostela.new(params[:hostela])

    respond_to do |format|
      if @hostela.save
        format.html { redirect_to @hostela, notice: 'Hostela was successfully created.' }
        format.json { render json: @hostela, status: :created, location: @hostela }
      else
        format.html { render action: "new" }
        format.json { render json: @hostela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hostelas/1
  # PUT /hostelas/1.json
  def update
    @hostela = Hostela.find(params[:id])

    respond_to do |format|
      if @hostela.update_attributes(params[:hostela])
        format.html { redirect_to @hostela, notice: 'Hostela was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hostela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hostelas/1
  # DELETE /hostelas/1.json
  def destroy
    @hostela = Hostela.find(params[:id])
    @hostela.destroy

    respond_to do |format|
      format.html { redirect_to hostelas_url }
      format.json { head :no_content }
    end
  end
end
