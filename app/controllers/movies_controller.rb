class MoviesController < ApplicationController
    #GET /movies
    def index
        @movies = Movie.all
    end

    #GET /movies/:id
    def show
        @movie = Movie.find(params[:id])
    end

    #POST /movies
    def create
        @movie = Movie.new
        movie.title(params[:title])
        movie.description([:description])
        movie.duration(params[:duration])
        movie.director(params[:director])
        movie.year_of_creation(params[:year_of_creation])
        movie.genre(params[:genre])
        movie.save
    end

    #GET /movies/:id/edit
    def edit
        @movie = Movie.find(params[:id])
    end

    #PUT/PATCH /movies/:id
    def update
        @movie = Movie.find(params[:id])
        movie.title(params[:title])
        movie.description([:description])
        movie.duration(params[:duration])
        movie.director(params[:director])
        movie.year_of_creation(params[:year_of_creation])
        movie.genre(params[:genre])
        movie.update
    end
    
    #DELETE /movies/:id
    def destroy
        @movie = Movie.find(params[:id])
        movie.destroy
    end
end