class UsersController < ApplicationController
    
    def index
        @users = User.all
        # views/users/index.html.erb
    end
    
    def new
        # By default, Rails looks for views/users/new.html.erb
    end
    
    def create
        
    end
    
    def show
        @this_user = User.find(params[:id])
    end
    
    def destroy
        User.find(params[:id]).destroy
        redirect_to "/"
    end
    
    def edit
        # /views/users/edit.html.erb
        @this_user = User.find(params[:id])
    end
    
    def update
        # Note: We're not sending this_user to a view so it doesn't have to be an instance variable, but it won't break if you make it one
        
        this_user = User.find(params[:id]) 
        if this_user.update_attributes(whitelisted_params)
            flash[:success] = "Changes saved!"
            redirect_to "/users/#{this_user.id}"
        else
            flash[:error] = "Something went terribly wrong!"
            redirect_to action: "edit"
        end
    end   
    
private

    def whitelisted_params
        params.require(:user).permit(:name, :email)
    end

end