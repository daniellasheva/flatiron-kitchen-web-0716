class AddPicToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :pic, :string
  end
end
