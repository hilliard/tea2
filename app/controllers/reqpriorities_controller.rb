class ReqprioritiesController < ApplicationController
  before_action :set_reqpriority, only: [:show, :edit, :update, :destroy]

  # GET /reqpriorities
  # GET /reqpriorities.json
  def index
    @reqpriorities = Reqpriority.all
  end

  # GET /reqpriorities/1
  # GET /reqpriorities/1.json
  def show
  end

  # GET /reqpriorities/new
  def new
    @reqpriority = Reqpriority.new
  end

  # GET /reqpriorities/1/edit
  def edit
  end

  # POST /reqpriorities
  # POST /reqpriorities.json
  def create
    @reqpriority = Reqpriority.new(reqpriority_params)

    respond_to do |format|
      if @reqpriority.save
        format.html { redirect_to @reqpriority, notice: 'Reqpriority was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reqpriority }
      else
        format.html { render action: 'new' }
        format.json { render json: @reqpriority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reqpriorities/1
  # PATCH/PUT /reqpriorities/1.json
  def update
    respond_to do |format|
      if @reqpriority.update(reqpriority_params)
        format.html { redirect_to @reqpriority, notice: 'Reqpriority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reqpriority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reqpriorities/1
  # DELETE /reqpriorities/1.json
  def destroy
    @reqpriority.destroy
    respond_to do |format|
      format.html { redirect_to reqpriorities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reqpriority
      @reqpriority = Reqpriority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reqpriority_params
      params.require(:reqpriority).permit(:reqpriorityname)
    end
end
