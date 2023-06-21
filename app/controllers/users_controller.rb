class UsersController < ApplicationController 
    def new
        @user=User.new
    end
    def create
        @user = User.new(params.require(:user).permit(:username, :email, :password))
        if @user.save
            flash[:notice]="User created successfully"
            redirect_to articles_path#Rails automatically extract id from @article to useform path
            else
                render "new"
            end
    end
end