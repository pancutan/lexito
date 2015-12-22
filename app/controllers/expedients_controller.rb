class ExpedientsController < ApplicationController
  before_action :set_expedient, only: [:show, :edit, :update, :destroy]

  # GET /expedients
  # GET /expedients.json
  def index
    @expedients = Expedient.all
  end

  # GET /expedients/1
  # GET /expedients/1.json
  def show
  end

  # GET /expedients/new
  def new
    @expedient = Expedient.new
  end

  # GET /expedients/1/edit
  def edit
  end

  # POST /expedients
  # POST /expedients.json
  def create
    @expedient = Expedient.new(expedient_params)

    respond_to do |format|
      if @expedient.save
        format.html { redirect_to @expedient, notice: 'Expediente creado correctamente.' }
        format.json { render :show, status: :created, location: @expedient }
      else
        format.html { render :new }
        format.json { render json: @expedient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expedients/1
  # PATCH/PUT /expedients/1.json
  def update
    respond_to do |format|
      if @expedient.update(expedient_params)
        format.html { redirect_to @expedient, notice: 'Expediente modificado.' }
        format.json { render :show, status: :ok, location: @expedient }
      else
        format.html { render :edit }
        format.json { render json: @expedient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expedients/1
  # DELETE /expedients/1.json
  def destroy
    @expedient.destroy
    respond_to do |format|
      format.html { redirect_to expedients_url, notice: 'Expediente borrado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expedient
      @expedient = Expedient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expedient_params
      params.require(:expedient).permit(:numero, :caratula)
    end
end
