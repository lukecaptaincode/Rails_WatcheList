class BookobjectsController < ApplicationController
  before_action :set_bookobject, only: [:show, :edit, :update, :destroy]

  # GET /bookobjects
  # GET /bookobjects.json
  def index
    @bookobjects = Bookobject.all
  end

  # GET /bookobjects/1
  # GET /bookobjects/1.json
  def show
  end

  # GET /bookobjects/new
  def new
    @bookobject = Bookobject.new
  end

  # GET /bookobjects/1/edit
  def edit
  end

  # POST /bookobjects
  # POST /bookobjects.json
  def create
    @bookobject = Bookobject.new(bookobject_params)

    respond_to do |format|
      if @bookobject.save
        format.html { redirect_to @bookobject, notice: 'Bookobject was successfully created.' }
        format.json { render :show, status: :created, location: @bookobject }
      else
        format.html { render :new }
        format.json { render json: @bookobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookobjects/1
  # PATCH/PUT /bookobjects/1.json
  def update
    respond_to do |format|
      if @bookobject.update(bookobject_params)
        format.html { redirect_to @bookobject, notice: 'Bookobject was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookobject }
      else
        format.html { render :edit }
        format.json { render json: @bookobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookobjects/1
  # DELETE /bookobjects/1.json
  def destroy
    @bookobject.destroy
    respond_to do |format|
      format.html { redirect_to bookobjects_url, notice: 'Bookobject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookobject
      @bookobject = Bookobject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookobject_params
      params.require(:bookobject).permit(:author, :publisher, :mid)
    end
end
