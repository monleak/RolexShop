class WatchesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_watch, only: %i[ show edit update destroy ]

  # GET /watches or /watches.json
  def index
    @watches = if params[:gender]
      Watch.where('gender LIKE ?', "%#{params[:gender]}%")
    else 
      Watch.all
    end
  end

  # GET /watches/1 or /watches/1.json
  def show
  end

  # GET /watches/new
  def new
    @watch = Watch.new
  end

  # GET /watches/1/edit
  def edit
  end

  # POST /watches or /watches.json
  def create
    @watch = Watch.new(watch_params)

    respond_to do |format|
      if @watch.save
        format.html { redirect_to watch_url(@watch), notice: "Watch was successfully created." }
        format.json { render :show, status: :created, location: @watch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watches/1 or /watches/1.json
  def update
    respond_to do |format|
      if @watch.update(watch_params)
        format.html { redirect_to watch_url(@watch), notice: "Watch was successfully updated." }
        format.json { render :show, status: :ok, location: @watch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @watch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watches/1 or /watches/1.json
  def destroy
    @watch.destroy

    respond_to do |format|
      format.html { redirect_to watches_url, notice: "Watch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch
      @watch = Watch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def watch_params
      params.require(:watch).permit(:title, :description, :content, :price, :gender, :image)
    end
    
    def authenticate_user!
      redirect_to new_user_session_path unless user_signed_in?
    end
end
