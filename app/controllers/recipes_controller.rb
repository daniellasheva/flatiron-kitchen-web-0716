class RecipesController < ApplicationController

	before_action :set_recipe, only: [:show, :edit, :update]
	def index
		@recipes = Recipe.all
	end

	def new
		@recipe = Recipe.new
		@ingredients = Ingredient.all
	end

	def create
		@recipe = Recipe.create(recipe_params)
		redirect_to recipe_path(@recipe)
	end

	def edit
  # binding.pry
  @ingredients = Ingredient.all
	end

	def update
  # binding.pry
		@recipe.update (recipe_params)
		if @recipe.save
			redirect_to recipe_path(@recipe)
		else
			render 'edit'
		end
	end

	def show
	end


	private

		def set_recipe
			@recipe = Recipe.find(params[:id])
		end

		def recipe_params
			params.require(:recipe).permit(:name, :pic, ingredient_ids:[])
		end
end
