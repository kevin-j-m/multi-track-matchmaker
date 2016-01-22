class ConferencesController < ApplicationController
  before_action :set_conference, only: [:show, :edit, :update]

  # GET /conferences
  def index
    @conferences = Conference.all
  end

  # GET /conferences/1
  def show
  end

  # GET /conferences/new
  def new
    @conference = Conference.new
  end

  # GET /conferences/1/edit
  def edit
  end

  # POST /conferences
  def create
    @conference = Conference.new(conference_params)

    if @conference.save
      redirect_to @conference, notice: I18n.t("conference.create.success")
    else
      render :new
    end
  end

  # PATCH/PUT /conferences/1
  def update
    if @conference.update(conference_params)
      redirect_to @conference, notice: I18n.t("conference.update.success")
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference
      @conference = Conference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def conference_params
      params.require(:conference).permit(:name, :starts_on, :ends_on)
    end
end
