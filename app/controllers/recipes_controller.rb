class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Reciper.new
  end
end
