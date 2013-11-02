class Prueba1sController < ApplicationController
  # GET /prueba1s
  # GET /prueba1s.json
  def index
    @prueba1s = Prueba1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prueba1s }
    end
  end

  # GET /prueba1s/1
  # GET /prueba1s/1.json
  def show
    @prueba1 = Prueba1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @prueba1 }
    end
  end

  # GET /prueba1s/new
  # GET /prueba1s/new.json
  def new
    @prueba1 = Prueba1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @prueba1 }
    end
  end

  # GET /prueba1s/1/edit
  def edit
    @prueba1 = Prueba1.find(params[:id])
  end

  # POST /prueba1s
  # POST /prueba1s.json
  def create
    @prueba1 = Prueba1.new(params[:prueba1])

    respond_to do |format|
      if @prueba1.save
        format.html { redirect_to @prueba1, notice: 'Prueba1 was successfully created.' }
        format.json { render json: @prueba1, status: :created, location: @prueba1 }
      else
        format.html { render action: "new" }
        format.json { render json: @prueba1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prueba1s/1
  # PUT /prueba1s/1.json
  def update
    @prueba1 = Prueba1.find(params[:id])

    respond_to do |format|
      if @prueba1.update_attributes(params[:prueba1])
        format.html { redirect_to @prueba1, notice: 'Prueba1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @prueba1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prueba1s/1
  # DELETE /prueba1s/1.json
  def destroy
    @prueba1 = Prueba1.find(params[:id])
    @prueba1.destroy

    respond_to do |format|
      format.html { redirect_to prueba1s_url }
      format.json { head :ok }
    end
  end
end
