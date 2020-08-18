class CategoriesController < ApplicationController
    def index 
        @category = Category.all
    end
end
private 
def category_params
    params.require(:category).permit(:name)
end