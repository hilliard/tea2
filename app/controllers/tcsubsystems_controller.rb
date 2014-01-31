class TcsubsystemsController < ApplicationController
  before_action :set_tcsubsystem, only: [:show, :edit, :update, :destroy]

  # GET /tcsubsystems
  # GET /tcsubsystems.json
  def index
    @tcsubsystems = Tcsubsystem.all
  end

  # GET /tcsubsystems/1
  # GET /tcsubsystems/1.json
  def show
  end

  # GET /tcsubsystems/new
  def new
    @tcsubsystem = Tcsubsystem.new
  end

  # GET /tcsubsystems/1/edit
  def edit
  end

  # POST /tcsubsystems
  # POST /tcsubsystems.json
  def create
    @tcsubsystem = Tcsubsystem.new(tcsubsystem_params)

    respond_to do |format|
      if @tcsubsystem.save
        format.html { redirect_to @tcsubsystem, notice: 'Tcsubsystem was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tcsubsystem }
      else
        format.html { render action: 'new' }
        format.json { render json: @tcsubsystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcsubsystems/1
  # PATCH/PUT /tcsubsystems/1.json
  def update
    respond_to do |format|
      if @tcsubsystem.update(tcsubsystem_params)
        format.html { redirect_to @tcsubsystem, notice: 'Tcsubsystem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tcsubsystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcsubsystems/1
  # DELETE /tcsubsystems/1.json
  def destroy
    @tcsubsystem.destroy
    respond_to do |format|
      format.html { redirect_to tcsubsystems_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcsubsystem
      @tcsubsystem = Tcsubsystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tcsubsystem_params
      params.require(:tcsubsystem).permit(:tcsubsystemname)
    end
end
