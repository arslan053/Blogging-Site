class UsersController < ApplicationController 
    def show
        @user=User.find(params[:id])
    end

    def index
        @users=User.all
    end
    
    def new
        @user=User.new
    end

    def create  
        @user=User.new(user_params)
        if(@user.save)
            flash[:notice]="Successfully Signup /n Welcom to My Blog"
            redirect_to users_path
        else
            render "new"
        end
    end
     
    def edit
        @user=User.find(params[:id])
    end

    def update
        @user=User.find(params[:id])
        if @user.update(user_params)
            flash[:notice]='Userupdated successfully'
            redirect_to @user
        else
            render 'edit'
            #redirect_to edit_user_path(@user)
        end
    end
    

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end 