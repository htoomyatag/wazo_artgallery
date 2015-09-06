class PaintTypesController < ApplicationController
  before_action :set_paint_type, only: [:show, :edit, :update, :destroy]
  layout "backend"
  before_action :authenticate_admin!
  # GET /paint_types
  # GET /paint_types.json
  def index
    @paint_types = PaintType.all
  end

  # GET /paint_types/1
  # GET /paint_types/1.json
  def show
  end

  # GET /paint_types/new
  def new
    @paint_type = PaintType.new
  end

  # GET /paint_types/1/edit
  def edit
  end

  # POST /paint_types
  # POST /paint_types.json
  def create
    @paint_type = PaintType.new(paint_type_params)

    respond_to do |format|
      if @paint_type.save
        format.html { redirect_to @paint_type, notice: 'Paint type was successfully created.' }
        format.json { render :show, status: :created, location: @paint_type }
      else
        format.html { render :new }
        format.json { render json: @paint_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paint_types/1
  # PATCH/PUT /paint_types/1.json
  def update
    respond_to do |format|
      if @paint_type.update(paint_type_params)
        format.html { redirect_to @paint_type, notice: 'Paint type was successfully updated.' }
        format.json { render :show, status: :ok, location: @paint_type }
      else
        format.html { render :edit }
        format.json { render json: @paint_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paint_types/1
  # DELETE /paint_types/1.json
  def destroy
    @paint_type.destroy
    respond_to do |format|
      format.html { redirect_to paint_types_url, notice: 'Paint type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint_type
      @paint_type = PaintType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paint_type_params
      params.require(:paint_type).permit(:type_name)
    end
end
