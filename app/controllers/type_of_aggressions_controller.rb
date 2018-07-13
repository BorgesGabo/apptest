class TypeOfAggressionsController < ApplicationController
  before_action :set_type_of_aggression, only: [:show, :edit, :update, :destroy]

  # GET /type_of_aggressions
  # GET /type_of_aggressions.json
  def index
    @type_of_aggressions = TypeOfAggression.all
  end

  # GET /type_of_aggressions/1
  # GET /type_of_aggressions/1.json
  def show
  end

  # GET /type_of_aggressions/new
  def new
    @type_of_aggression = TypeOfAggression.new
  end

  # GET /type_of_aggressions/1/edit
  def edit
  end

  # POST /type_of_aggressions
  # POST /type_of_aggressions.json
  def create
    @type_of_aggression = TypeOfAggression.new(type_of_aggression_params)

    respond_to do |format|
      if @type_of_aggression.save
        format.html { redirect_to @type_of_aggression, notice: 'Type of aggression was successfully created.' }
        format.json { render :show, status: :created, location: @type_of_aggression }
      else
        format.html { render :new }
        format.json { render json: @type_of_aggression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_of_aggressions/1
  # PATCH/PUT /type_of_aggressions/1.json
  def update
    respond_to do |format|
      if @type_of_aggression.update(type_of_aggression_params)
        format.html { redirect_to @type_of_aggression, notice: 'Type of aggression was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_of_aggression }
      else
        format.html { render :edit }
        format.json { render json: @type_of_aggression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_aggressions/1
  # DELETE /type_of_aggressions/1.json
  def destroy
    @type_of_aggression.destroy
    respond_to do |format|
      format.html { redirect_to type_of_aggressions_url, notice: 'Type of aggression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_of_aggression
      @type_of_aggression = TypeOfAggression.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_of_aggression_params
      params.require(:type_of_aggression).permit(:non_sexual_violence, :sexual_violence)
    end
end
