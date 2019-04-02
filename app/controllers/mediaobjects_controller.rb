class MediaobjectsController < ApplicationController
  before_action :set_mediaobject, only: [:show, :edit, :update, :destroy]

  # GET /mediaobjects
  # GET /mediaobjects.json
  def index
    @mediaobjects = Mediaobject.all
  end

  # GET /mediaobjects/1
  # GET /mediaobjects/1.json
  def show
  end

  # GET /mediaobjects/new
  def new
    @mediaobject = Mediaobject.new
  end

  # GET /mediaobjects/1/edit
  def edit
  end

  # POST /mediaobjects
  # POST /mediaobjects.json
  def create
    @mediaobject = Mediaobject.new(mediaobject_params)

    respond_to do |format|
      if @mediaobject.save
        format.html {redirect_to @mediaobject, notice: 'Mediaobject was successfully created.'}
        format.json {render :show, status: :created, location: @mediaobject}
      else
        format.html {render :new}
        format.json {render json: @mediaobject.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /mediaobjects/1
  # PATCH/PUT /mediaobjects/1.json
  def update
    respond_to do |format|
      if @mediaobject.update(mediaobject_params)
        format.html {redirect_to @mediaobject, notice: 'Mediaobject was successfully updated.'}
        format.json {render :show, status: :ok, location: @mediaobject}
      else
        format.html {render :edit}
        format.json {render json: @mediaobject.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /mediaobjects/1
  # DELETE /mediaobjects/1.json
  def destroy
    @mediaobject.destroy
    redirect_to :root
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_mediaobject
    @mediaobject = Mediaobject.find(params[:id])

  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def mediaobject_params
    params.require(:mediaobject).permit(:title, :genre, :releasedate, :uid, :mid)
  end
end
