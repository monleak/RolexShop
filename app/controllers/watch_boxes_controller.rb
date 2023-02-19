class WatchBoxesController < ApplicationController
  before_action :set_watch_box, only: %i[ show edit update destroy ]

  # GET /watch_boxes or /watch_boxes.json
  def index
    @watch_boxes = WatchBox.all
  end

  # GET /watch_boxes/1 or /watch_boxes/1.json
  def show
  end

  # GET /watch_boxes/new
  def new
    @watch_box = WatchBox.new
  end

  # GET /watch_boxes/1/edit
  def edit
  end

  # POST /watch_boxes or /watch_boxes.json
  def create
    @watch_box = WatchBox.new(watch_box_params)

    respond_to do |format|
      if @watch_box.save
        format.html { redirect_to watch_box_url(@watch_box), notice: "Watch box was successfully created." }
        format.json { render :show, status: :created, location: @watch_box }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @watch_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watch_boxes/1 or /watch_boxes/1.json
  def update
    respond_to do |format|
      if @watch_box.update(watch_box_params)
        format.html { redirect_to watch_box_url(@watch_box), notice: "Watch box was successfully updated." }
        format.json { render :show, status: :ok, location: @watch_box }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @watch_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watch_boxes/1 or /watch_boxes/1.json
  def destroy
    @watch_box.destroy

    respond_to do |format|
      format.html { redirect_to watch_boxes_url, notice: "Watch box was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch_box
      @watch_box = WatchBox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watch_box_params
      params.require(:watch_box).permit(:title, :branch, :model, :description, :price, :avata)
    end
end
