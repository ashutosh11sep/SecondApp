class ProductsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

def index

  if current_user
     @products= Product.where(user_id: current_user.id)
  
else
  @products=Product.all
end 
end

def show
      @comment = Comment.new
	    @product = Product.find(params[:id])
end
def new
	 @product = Product.new
	end

	
def create
  @product = Product.new(product_params)
 if @product.save
  redirect_to @product

  else
    render 'new'
end
end
private
  def product_params
    params.require(:product).permit(:name, :description, :location, :category_id, :images, :user_id)
  end

	end


