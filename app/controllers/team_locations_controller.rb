class TeamLocationsController < ApplicationController
  before_action :set_team_location, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :create, :update]

  # GET /team_locations
  # GET /team_locations.json
  def index
    @team_locations = TeamLocation.joins(:team).order( "teams.number").paginate(:page => params[:page], :per_page => 30)
    @teams = Team.order( :number )
    render layout: "map"
  end

  # GET /team_locations/1
  # GET /team_locations/1.json
  def show
  end

  # GET /team_locations/new
  def new
    @team_location = TeamLocation.new
  end

  # GET /team_locations/1/edit
  def edit
  end

  # POST /team_locations
  # POST /team_locations.json
  def create
    @team_location = TeamLocation.new(team_location_params)

    respond_to do |format|
      if @team_location.save
        format.html { redirect_to @team_location, notice: 'Team location was successfully created.' }
        format.json { render :show, status: :created, location: @team_location }
      else
        format.html { render :new }
        format.json { render json: @team_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_locations/1
  # PATCH/PUT /team_locations/1.json
  def update
    respond_to do |format|
      if @team_location.update(team_location_params)
        format.html { redirect_to @team_location, notice: 'Team location was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_location }
      else
        format.html { render :edit }
        format.json { render json: @team_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_locations/1
  # DELETE /team_locations/1.json
  def destroy
    @team_location.destroy
    respond_to do |format|
      format.html { redirect_to team_locations_url, notice: 'Team location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_location
      @team = Team.find_by( number: params[:id])
      @team_location = TeamLocation.find_by( team_id: @team.try(:id))
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_location_params
      params.require(:team_location).permit(:address, :latitude, :longitude, :team_id)
    end
end
