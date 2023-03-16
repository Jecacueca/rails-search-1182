class MoviesController < ApplicationController
  def index
    if params[:query].present?
      @movies = PgSearch.multisearch(params[:query])
    else
      @movies = Movie.all
    end
  end
end
