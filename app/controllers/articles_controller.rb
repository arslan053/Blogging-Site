class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :show, :destroy, :update]
    def new
        @article=Article.new #also useful for empty instance for error meassages showing for create

    end
 
    def edit
        
    end
    def show 
    end

    def index
        @articles=Article.all
    end

    def create
        #@article=Article.new(params[:given_values]) #Must white list them from web

        @article=Article.new(article_params)
        #require the top level key of article and permit title and description from there to create article instance variable
        # render plain: @article
        # render plain:@article.inspect
        # render plain:params[:given_values] 
        @article.save
        # redirect_to articles_path(@articles) #Not articles article
        if @article.save
        flash[:notice]="Article created successfully"
        redirect_to article_path(@article) #Rails automatically extract id from @article to useform path
        else
            render "new"
        end
        #Short method
        # redirect_to @article
    end

    def update
        
        if @article.update(article_params)
            redirect_to @article           #article_path(@article)
            flash[:notice]="Article Updated Successfully"
        else
            render "edit"
        end
    end

    def destroy 
        @article.destroy
        redirect_to articles_path
    end
end 

private

def set_article
    @article=Article.find(params[:id])
end
def  article_params
    params.require(:article).permit(:title, :description)

end
