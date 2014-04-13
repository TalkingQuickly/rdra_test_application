class AwesomesController < ApplicationController
  before_action :set_awesome, only: [:show, :edit, :update, :destroy]

  # GET /awesomes
  # GET /awesomes.json
  def index
    @awesomes = Awesome.all
  end

  # GET /awesomes/1
  # GET /awesomes/1.json
  def show
  end

  # GET /awesomes/new
  def new
    @awesome = Awesome.new
  end

  # GET /awesomes/1/edit
  def edit
  end

  # POST /awesomes
  # POST /awesomes.json
  def create
    @awesome = Awesome.new(awesome_params)

    respond_to do |format|
      if @awesome.save
        format.html { redirect_to @awesome, notice: 'Awesome was successfully created.' }
        format.json { render :show, status: :created, location: @awesome }
      else
        format.html { render :new }
        format.json { render json: @awesome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awesomes/1
  # PATCH/PUT /awesomes/1.json
  def update
    respond_to do |format|
      if @awesome.update(awesome_params)
        format.html { redirect_to @awesome, notice: 'Awesome was successfully updated.' }
        format.json { render :show, status: :ok, location: @awesome }
      else
        format.html { render :edit }
        format.json { render json: @awesome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awesomes/1
  # DELETE /awesomes/1.json
  def destroy
    @awesome.destroy
    respond_to do |format|
      format.html { redirect_to awesomes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awesome
      @awesome = Awesome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def awesome_params
      params.require(:awesome).permit(:name)
    end
end
