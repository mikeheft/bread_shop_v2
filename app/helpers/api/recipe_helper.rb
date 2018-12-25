module Api
  module RecipeHelper
    LOW = (0.0..4.99)

    MODERATE = (5.0..10.0)

    HIGH = (11.0..25.0)

    def create_recipe(params)
      recipe = current_api_user.recipes.create(name: params[:name])
      puts recipe.errors.inspect
      create_recipe_ingredients(recipe: recipe, ingredients: params[:ingredients])
      recipe.recipe_ingredients.each(&:bakers_percentage)
      recipe
    end

    def create_recipe_ingredients(recipe:, ingredients:)
      ingredients.each do |ingredient|
        ing = Ingredient.find_or_create_by(name: ingredient[:name])

        recipe.recipe_ingredients.create(amount: ingredient[:amount], ingredient: ing)
      end
    end
  end
end