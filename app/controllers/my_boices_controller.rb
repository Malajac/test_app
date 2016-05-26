class MyBoicesController < ApplicationController
  before_action :set_my_boice, only: [:show, :edit, :update, :destroy]

  # GET /my_boices
  # GET /my_boices.json
  def index
    @my_boices = MyBoice.all
  end

  # GET /my_boices/1
  # GET /my_boices/1.json
  def show
  end

  # GET /my_boices/new
  def new
    @my_boice = MyBoice.new
  end

  # GET /my_boices/1/edit
  def edit
  end

  # POST /my_boices
  # POST /my_boices.json
  def create
    @my_boice = MyBoice.new(my_boice_params)

    respond_to do |format|
      if @my_boice.save
        format.html { redirect_to @my_boice, notice: 'My boice was successfully created.' }
        format.json { render :show, status: :created, location: @my_boice }
      else
        format.html { render :new }
        format.json { render json: @my_boice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_boices/1
  # PATCH/PUT /my_boices/1.json
  def update
    respond_to do |format|
      if @my_boice.update(my_boice_params)
        format.html { redirect_to @my_boice, notice: 'My boice was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_boice }
      else
        format.html { render :edit }
        format.json { render json: @my_boice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_boices/1
  # DELETE /my_boices/1.json
  def destroy
    @my_boice.destroy
    respond_to do |format|
      format.html { redirect_to my_boices_url, notice: 'My boice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_boice
      @my_boice = MyBoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_boice_params
      params.require(:my_boice).permit(:name, :description)
    end
end
