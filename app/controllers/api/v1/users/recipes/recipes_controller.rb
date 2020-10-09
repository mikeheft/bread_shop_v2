module Api
  module V1
    module Users
      module Recipes
        class RecipesController < UsersBaseController
          skip_before_action :set_user
          before_action :set_user_recipe, except: %i[create index]
          
          def create
            service = ::Recipes::Create.call(user: current_user, params: recipe_params)
            return error_response(service.errors) unless service.success?
            
            success_response(serialized_resource(service.recipe, RecipeSerializer), :created)
          end
          
          def index
            recipes = current_user.recipes.includes(:recipe_ingredients)
            success_response(serialized_resource(recipes, RecipeSerializer, include: %i[recipe_ingredients]))
          end
          
          def show
            success_response(serialized_resource(@recipe, RecipeSerializer))
          end
          
          def update
            @user_recipe.update_recipe(params: recipe_params)
            success_response(data: V1::Recipes::OverviewSerializer.new(@user_recipe))
          end
          
          def destroy
            return error_response(code: 404, message: t('api.errors.recipes.record_not_found')) unless @user_recipe.present?
            
            recipe_name = @user_recipe.name
            @user_recipe.destroy
            
            success_response(code: 202, message: t('api.recipes.recipe_deleted', recipe_name: recipe_name))
          end
          
          private
          
          def set_user_recipe
            @recipe ||= current_user.recipes.find_by(id: params[:recipe_id] || params[:id])
          end
          
          def recipe_params
            params.permit(
              data: [
                      :type,
                      attributes:    %i[name unit number_of_portions weight_per_portion],
                      relationships: [
                                       ingredients: [data: [:type, attributes: %i[name amount]]]
                                     ]
                    ]
            )
          end
        end
      end
    end
  end
end