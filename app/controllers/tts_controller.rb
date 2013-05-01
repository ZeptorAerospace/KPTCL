class TtsController < ApplicationController
  # GET /tts
  # GET /tts.json
  def index
    @tts = Tt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tts }
    end
  end

  # GET /tts/1
  # GET /tts/1.json
  def show
    @tt = Tt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tt }
    end
  end

  # GET /tts/new
  # GET /tts/new.json
  def new
    @tt = Tt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tt }
    end
  end

  # GET /tts/1/edit
  def edit
    @tt = Tt.find(params[:id])
  end

  # POST /tts
  # POST /tts.json
  def create
    @tt = Tt.new(params[:tt])

    respond_to do |format|
      if @tt.save
        format.html { redirect_to @tt, notice: 'Tt was successfully created.' }
        format.json { render json: @tt, status: :created, location: @tt }
      else
        format.html { render action: "new" }
        format.json { render json: @tt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tts/1
  # PUT /tts/1.json
  def update
    @tt = Tt.find(params[:id])

    respond_to do |format|
      if @tt.update_attributes(params[:tt])
        format.html { redirect_to @tt, notice: 'Tt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tts/1
  # DELETE /tts/1.json
  def destroy
    @tt = Tt.find(params[:id])
    @tt.destroy

    respond_to do |format|
      format.html { redirect_to tts_url }
      format.json { head :no_content }
    end
  end
end
