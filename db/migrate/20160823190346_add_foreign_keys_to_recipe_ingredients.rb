class AddForeignKeysToRecipeIngredients < ActiveRecord::Migration
  def change
  	add_foreign_key :recipe_ingredients, :recipe 
  	add_foreign_key :recipe_ingredients, :ingredient 
  end
end
