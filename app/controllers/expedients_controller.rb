class ExpedientsController < ApplicationController
  before_action :set_expedient, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /expedients
  # GET /expedients.json
  def index
    @expedients = Expedient.order(:caratula)
  end

  # GET /expedients/1
  # GET /expedients/1.json
  def show
    @update = Update.new
    @updates = Update.where(expedient_id: @expedient.id).order("updated_at DESC")
  end

  # GET /expedients/new
  def new
    @expedient = Expedient.new
    @new = 1
  end

  # GET /expedients/1/edit
  def edit
    @update = Update.new    
  end

  # POST /expedients
  # POST /expedients.json
  def create
    @expedient = Expedient.new(expedient_params)

    respond_to do |format|
      if @expedient.save
        format.html { redirect_to expedients_url, notice: 'Se creó un nuevo expediente' }
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
        if params[:expedient][:novedad] != ""
          @update = Update.new
          @update.novedad = params[:expedient][:novedad]
          @update.expedient_id = @expedient.id
          @update.save
        end
        format.html { redirect_to expedients_url, notice: 'El expediente fue correctamente actualizado.' }
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
      format.html { redirect_to expedients_url, notice: 'Expediente borrado' }
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
      params.require(:expedient).permit(:numero, :caratula, :actor, :demandado, :abogado, :telefono_abogado, :email_abogado, :perito_medico, :perito_medico_email, :perito_medico_telefono, :perito_medico_incapacidad, :perito_psicologico, :perito_psicologico_email, :perito_psicologico_telefono, :perito_psicologico_incapacidad, :perito_contable, :perito_contable_email, :perito_contable_telefono, :perito_contable_incapacidad, :ibm, :indenmizacion, :dni, :camara, :fecnac, :gestor, :responsable)
    end
end
