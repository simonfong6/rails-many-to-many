class CategoriesController < ApplicationController
  def create
    @category = Category.new(category_params)
   
    if @category.save
      render plain: "Ok"
    else
      render plain: "Not Ok"
    end
    
  end
  private
    def category_params
      params.require(:category).permit(:title)
    end
end
