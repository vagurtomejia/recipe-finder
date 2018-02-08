class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || 'vegan gluten free' #defaults to vegan if no request param
    @recipes = Recipe.for(@search_term) #array of recipes found
  end
end
