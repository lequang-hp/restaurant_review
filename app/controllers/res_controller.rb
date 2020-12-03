class ResController < ApplicationController
  before_action :set_re, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /res
  # GET /res.json
  def index
    @res = Re.all
  end

  # GET /res/1
  # GET /res/1.json
  def show
    @re = Re.find(params[:id])
    @item = Item.new
  end

  # GET /res/new
  def new
    @re = Re.new
  end

  # GET /res/1/edit
  def edit
  end

  # POST /res
  # POST /res.json
  def create
    @re = Re.new(re_params)

    respond_to do |format|
      if @re.save
        format.html { redirect_to @re, notice: 'Re was successfully created.' }
        format.json { render :show, status: :created, location: @re }
      else
        format.html { render :new }
        format.json { render json: @re.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /res/1
  # PATCH/PUT /res/1.json
  def update
    respond_to do |format|
      if @re.update(re_params)
        format.html { redirect_to @re, notice: 'Re was successfully updated.' }
        format.json { render :show, status: :ok, location: @re }
      else
        format.html { render :edit }
        format.json { render json: @re.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /res/1
  # DELETE /res/1.json
  def destroy
    @re.destroy
    respond_to do |format|
      format.html { redirect_to res_url, notice: 'Re was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_re
      @re = Re.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def re_params
      params.require(:re).permit(:name, :address)
      params.require(:re).permit(:name, :address, :image)
    end
end
