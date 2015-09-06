class EateriesController < ApplicationController
  before_action :set_eatery, only: [:show, :edit, :update, :destroy]

  # GET /eateries
  def index
    @eateries = Eatery.all
  end

  # GET /eateries/1
  def show
  end

  # GET /eateries/new
  def new
    @eatery = Eatery.new
  end

  # GET /eateries/1/edit
  def edit
  end

  # POST /eateries
  def create
    @eatery = Eatery.new(eatery_params)

    if @eatery.save
      redirect_to @eatery, notice: 'Eatery was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /eateries/1
  def update
    if @eatery.update(eatery_params)
      redirect_to @eatery, notice: 'Eatery was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /eateries/1
  def destroy
    @eatery.destroy
    redirect_to eateries_url, notice: 'Eatery was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eatery
      @eatery = Eatery.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def eatery_params
      params.require(:eatery).permit(:name, :summary, :photo)
    end
end
