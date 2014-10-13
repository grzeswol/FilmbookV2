class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]
	respond_to :html

  def index
    @films = Film.all
    respond_with(@films)
  end

  def show
    respond_with(@film)
  end

  def new
    @film = Film.new
    respond_with(@film)
  end

  def edit
  end

  def create
    @film = Film.new(film_params)
    @film.save
    respond_with(@film)
  end

  def update
    @film.update(film_params)
    respond_with(@film)
  end

  def destroy
    @film.destroy
    respond_with(@film)
  end

  private
    def set_film
      @film = Film.find(params[:id])
    end

    def film_params
      params.require(:film).permit(:title, :director, :year)
    end
end
