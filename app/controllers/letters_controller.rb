class LettersController < ApplicationController
  before_action :set_letter, only: [:show, :flag]

  # GET /letters
  # GET /letters.json
  def index
    @letters = Letter.all
  end

  # GET /letters/1
  # GET /letters/1.json
  def show
    @letter.increment!(:read_count, 1)
  end

  # GET /letters/new
  def new
    @letter = Letter.new
    @statuses = Letter.statuses
  end

  # POST /letters
  # POST /letters.json
  def create
    @letter = Letter.new(letter_params)

    respond_to do |format|
      if @letter.save
        format.html { redirect_to @letter, notice: 'Letter was successfully created.' }
        format.json { render :show, status: :created, location: @letter }
      else
        format.html { render :new }
        format.json { render json: @letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /letters/1/flag
  # GET /letters/1/flag.json
  def flag
    @letter.flagged!
    respond_to do |format|
      format.html { redirect_to letters_url, notice: 'Letter was successfully flagged.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_letter
      @letter = Letter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def letter_params
      params.require(:letter).permit(:content, :status, :read_count, :thanks_count, :user_id)
    end
end
