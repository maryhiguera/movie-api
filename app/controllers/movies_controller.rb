class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    render :index
  end

  def show
    @movie = Movie.find(params[:id])
    render :show
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )

    if @movie.valid?
      render :show
    else
      render json: { errors: @movie.errors_full_message }
    end
  end

  def update
    @movie = Movie.find(params[:id])

    @movie.update(
      title: params[:title] || movie.title,
      year: params[:year] || movie.year,
      plot: params[:plot] || movie.plot
    )

    if @movie.valid?
      render :show
    else
      render json: { errors: @movie.errors_full_message }
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: { message: "movie destroyed" }
  end
end
