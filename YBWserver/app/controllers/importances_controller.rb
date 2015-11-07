class ImportancesController < ApplicationController
  before_action :set_importance, only: [:show, :edit, :update, :destroy]

  # GET /importances
  # GET /importances.json
  def index
    @importances = Importance.all
  end

  # GET /importances/1
  # GET /importances/1.json
  def show
  end

  # GET /importances/new
  def new
    @importance = Importance.new
  end

  # GET /importances/1/edit
  def edit
  end

  # POST /importances
  # POST /importances.json
  def create
    @importance = Importance.new(importance_params)

    respond_to do |format|
      if @importance.save
        format.html { redirect_to @importance, notice: 'Importance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @importance }
      else
        format.html { render action: 'new' }
        format.json { render json: @importance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /importances/1
  # PATCH/PUT /importances/1.json
  def update
    respond_to do |format|
      if @importance.update(importance_params)
        format.html { redirect_to @importance, notice: 'Importance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @importance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /importances/1
  # DELETE /importances/1.json
  def destroy
    @importance.destroy
    respond_to do |format|
      format.html { redirect_to importances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_importance
      @importance = Importance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def importance_params
      params.require(:importance).permit(:value)
    end
end
