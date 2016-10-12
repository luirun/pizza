class BoxesController < ApplicationController
  before_action :set_box, only: [:show, :edit, :update, :destroy]
  
  def index
    @box = Box.all
  end

  def show
  end

  def new
    @box = Box.new
  end

  # POST /sliders
  # POST /sliders.json
  def create
    @box = Box.new(box_params)
    respond_to do |format|
      if @box.save
        format.html { redirect_to params[:box][:prev_url], notice: 'Box was successfully created.' }
        format.json { render :show, status: :created, location: @box }
      else
        format.html { render :new }
        format.json { render json: @box.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @box.update(box_params)
        format.html { redirect_to @box, notice: 'Slider was successfully updated.' }
        format.json { render :show, status: :ok, location: @box }
		format.js   { render :layout => false }
      else
        format.html { render :edit }
        format.json { render json: @box.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @box.destroy
    respond_to do |format|
      format.html { redirect_to sliders_url, notice: 'Slider was successfully destroyed.' }
      format.json { head :no_content }
	  format.js   { render :layout => false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_box
      @box = Box.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def box_params
      params.require(:box).permit(:first_title, :second_title, :artykul, :cover, :published, :position)
    end
end
