class PlushkisController < ApplicationController
  # GET /plushkis
  # GET /plushkis.json
  def index
    @plushkis = Plushki.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plushkis }
    end
  end

  # GET /plushkis/1
  # GET /plushkis/1.json
  def show
    @plushki = Plushki.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plushki }
    end
  end

  # GET /plushkis/new
  # GET /plushkis/new.json
  def new
    @plushki = Plushki.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plushki }
    end
  end

  # GET /plushkis/1/edit
  def edit
    @plushki = Plushki.find(params[:id])
  end

  # POST /plushkis
  # POST /plushkis.json
  def create
    @plushki = Plushki.new(params[:plushki])

    respond_to do |format|
      if @plushki.save
        format.html { redirect_to plushkis_path, notice: 'Plushki was successfully created.' }
        format.json { render json: @plushki, status: :created, location: @plushki }
      else
        format.html { render action: "new" }
        format.json { render json: @plushki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plushkis/1
  # PUT /plushkis/1.json
  def update
    @plushki = Plushki.find(params[:id])

    respond_to do |format|
      if @plushki.update_attributes(params[:plushki])
        format.html { redirect_to @plushki, notice: 'Plushki was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plushki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plushkis/1
  # DELETE /plushkis/1.json
  def destroy
    @plushki = Plushki.find(params[:id])
    @plushki.destroy

    respond_to do |format|
      format.html { redirect_to plushkis_url }
      format.json { head :no_content }
    end
  end
end
