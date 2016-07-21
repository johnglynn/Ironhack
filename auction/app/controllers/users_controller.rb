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
    
    def edit
        
    end
    
    def update
        
    end
    
    def destroy
        User.find(params[:id]).destroy
        redirect_to "/"
    end
    
end
