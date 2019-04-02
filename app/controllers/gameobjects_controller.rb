class GameobjectsController < ApplicationController
  before_action :set_gameobject, only: [:show, :edit, :update, :destroy]

  # GET /gameobjects
  # GET /gameobjects.json
  def index
    @gameobjects = Gameobject.all
  end

  # GET /gameobjects/1
  # GET /gameobjects/1.json
  def show
  end

  # GET /gameobjects/new
  def new
    @gameobject = Gameobject.new
  end

  # GET /gameobjects/1/edit
  def edit
  end

  # POST /gameobjects
  # POST /gameobjects.json
  def create
    @gameobject = Gameobject.new(gameobject_params)

    respond_to do |format|
      if @gameobject.save
        format.html { redirect_to @gameobject, notice: 'Gameobject was successfully created.' }
        format.json { render :show, status: :created, location: @gameobject }
      else
        format.html { render :new }
        format.json { render json: @gameobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gameobjects/1
  # PATCH/PUT /gameobjects/1.json
  def update
    respond_to do |format|
      if @gameobject.update(gameobject_params)
        format.html { redirect_to @gameobject, notice: 'Gameobject was successfully updated.' }
        format.json { render :show, status: :ok, location: @gameobject }
      else
        format.html { render :edit }
        format.json { render json: @gameobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gameobjects/1
  # DELETE /gameobjects/1.json
  def destroy
    @gameobject.destroy
    respond_to do |format|
      format.html { redirect_to gameobjects_url, notice: 'Gameobject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gameobject
      @gameobject = Gameobject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gameobject_params
      params.require(:gameobject).permit(:publisher, :developer, :platform, :mid)
    end
end
