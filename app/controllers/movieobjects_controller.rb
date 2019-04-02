class MovieobjectsController < ApplicationController
  before_action :set_movieobject, only: [:show, :edit, :update, :destroy]

  # GET /movieobjects
  # GET /movieobjects.json
  def index
    @movieobjects = Movieobject.all
  end

  # GET /movieobjects/1
  # GET /movieobjects/1.json
  def show
  end

  # GET /movieobjects/new
  def new
    @movieobject = Movieobject.new
  end

  # GET /movieobjects/1/edit
  def edit
  end

  # POST /movieobjects
  # POST /movieobjects.json
  def create
    @movieobject = Movieobject.new(movieobject_params)

    respond_to do |format|
      if @movieobject.save
        format.html { redirect_to @movieobject, notice: 'Movieobject was successfully created.' }
        format.json { render :show, status: :created, location: @movieobject }
      else
        format.html { render :new }
        format.json { render json: @movieobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movieobjects/1
  # PATCH/PUT /movieobjects/1.json
  def update
    respond_to do |format|
      if @movieobject.update(movieobject_params)
        format.html { redirect_to @movieobject, notice: 'Movieobject was successfully updated.' }
        format.json { render :show, status: :ok, location: @movieobject }
      else
        format.html { render :edit }
        format.json { render json: @movieobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movieobjects/1
  # DELETE /movieobjects/1.json
  def destroy
    @movieobject.destroy
    respond_to do |format|
      format.html { redirect_to movieobjects_url, notice: 'Movieobject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movieobject
      @movieobject = Movieobject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movieobject_params
      params.require(:movieobject).permit(:studio, :director, :mid)
    end
end
