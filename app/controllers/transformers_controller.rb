class TransformersController < ApplicationController
  # GET /transformers
  # GET /transformers.json
  def index
    @transformers = Transformer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transformers }
    end
  end

  # GET /transformers/1
  # GET /transformers/1.json
  def show
    @transformer = Transformer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transformer }
    end
  end

  # GET /transformers/new
  # GET /transformers/new.json
  def new
    @transformer = Transformer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transformer }
    end
  end

  # GET /transformers/1/edit
  def edit
    @transformer = Transformer.find(params[:id])
  end

  # POST /transformers
  # POST /transformers.json
  def create
    @transformer = Transformer.new(params[:transformer])

    respond_to do |format|
      if @transformer.save
        format.html { redirect_to @transformer, notice: 'Transformer was successfully created.' }
        format.json { render json: @transformer, status: :created, location: @transformer }
      else
        format.html { render action: "new" }
        format.json { render json: @transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transformers/1
  # PUT /transformers/1.json
  def update
    @transformer = Transformer.find(params[:id])

    respond_to do |format|
      if @transformer.update_attributes(params[:transformer])
        format.html { redirect_to @transformer, notice: 'Transformer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transformer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transformers/1
  # DELETE /transformers/1.json
  def destroy
    @transformer = Transformer.find(params[:id])
    @transformer.destroy

    respond_to do |format|
      format.html { redirect_to transformers_url }
      format.json { head :no_content }
    end
  end
end
