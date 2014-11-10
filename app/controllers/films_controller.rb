class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy]
	before_action :set_carousel, only: :index
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


	def list_films
		@films = Film.all
		respond_with(@films)
	end


  private
    def set_film
      @film = Film.find(params[:id])
    end

		def set_carousel
			@film_carousel = []
			while (@film_carousel.count < 3 && Film.count >= 3) do 
				id = rand(1..Film.count)
				@film_carousel << Film.find(id) unless @film_carousel.include? (Film.find(id))
			end
		end

    def film_params
      params.require(:film).permit(:title, :director, :year, :image, :actors, :description)
    end
end
