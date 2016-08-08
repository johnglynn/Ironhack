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
#        @new_product = Product.new
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

   def edit
        # /views/users/edit.html.erb
       this_user = User.find(params[:user_id])
       @this_product = this_user.products.find(params[:id])
   end
    
    def update
        # Note: We're not sending this_user to a view so it doesn't have to be an instance variable, but it won't break if you make it one
        
        this_user = User.find(params[:user_id])
       @this_product = this_user.products.find(params[:id])
        if @this_product.update_attributes(whitelisted_params)
            flash[:success] = "Changes saved!"
            redirect_to "/users/#{this_user.id}/products/#{@this_product.id}"
        else
            flash[:error] = "Something went terribly wrong!"
            redirect_to action: "edit"
        end
    end       

    
private

    def whitelisted_params
        params.require(:product).permit(:title, :description)
    end

end
