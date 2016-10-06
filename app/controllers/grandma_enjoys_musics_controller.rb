class GrandmaEnjoysMusicsController < ApplicationController
  before_action :set_grandma_enjoys_music, only: [:show, :edit, :update, :destroy]

  # GET /grandma_enjoys_musics
  # GET /grandma_enjoys_musics.json
  def index
    @grandma_enjoys_musics = GrandmaEnjoysMusic.all
  end

  # GET /grandma_enjoys_musics/1
  # GET /grandma_enjoys_musics/1.json
  def show
  end

  # GET /grandma_enjoys_musics/new
  def new
    @grandma_enjoys_music = GrandmaEnjoysMusic.new
  end

  # GET /grandma_enjoys_musics/1/edit
  def edit
  end

  # POST /grandma_enjoys_musics
  # POST /grandma_enjoys_musics.json
  def create
    @grandma_enjoys_music = GrandmaEnjoysMusic.new(grandma_enjoys_music_params)

    respond_to do |format|
      if @grandma_enjoys_music.save
        format.html { redirect_to @grandma_enjoys_music, notice: 'Grandma enjoys music was successfully created.' }
        format.json { render :show, status: :created, location: @grandma_enjoys_music }
      else
        format.html { render :new }
        format.json { render json: @grandma_enjoys_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grandma_enjoys_musics/1
  # PATCH/PUT /grandma_enjoys_musics/1.json
  def update
    respond_to do |format|
      if @grandma_enjoys_music.update(grandma_enjoys_music_params)
        format.html { redirect_to @grandma_enjoys_music, notice: 'Grandma enjoys music was successfully updated.' }
        format.json { render :show, status: :ok, location: @grandma_enjoys_music }
      else
        format.html { render :edit }
        format.json { render json: @grandma_enjoys_music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grandma_enjoys_musics/1
  # DELETE /grandma_enjoys_musics/1.json
  def destroy
    @grandma_enjoys_music.destroy
    respond_to do |format|
      format.html { redirect_to grandma_enjoys_musics_url, notice: 'Grandma enjoys music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grandma_enjoys_music
      @grandma_enjoys_music = GrandmaEnjoysMusic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grandma_enjoys_music_params
      params.require(:grandma_enjoys_music).permit(:name, :form)
    end
end
