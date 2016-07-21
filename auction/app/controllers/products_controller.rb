class ProductsController < ApplicationController
    
    def index
        @this_user = User.find(params[:user_id])
        @this_users_products = @this_user.products
    end
    
    def show
        # Note: add if statement to check that this product exists
        @this_product = Product.find(params[:id])
    end
    
    def destroy
        this_user = User.find(params[:user_id])
        Product.find(params[:id]).destroy
        redirect_to "/users/#{this_user.id}/products"
    end

    def new
        @this_user = User.find(params[:user_id])
        @new_product = Product.new
    end

    def create
        this_user = User.find(params[:user_id])
        @new_product = this_user.products.new(whitelisted_params)
        if @new_product.save
            flash[:success] = "New product created!"
            redirect_to "/users/#{this_user.id}/products"
        else
            flash[:error] = "Something went terribly wrong!"
            redirect_to action: "new"
        end
    end

private

    def whitelisted_params
        params.require(:product).permit(:title, :description, :deadline)
    end

end
