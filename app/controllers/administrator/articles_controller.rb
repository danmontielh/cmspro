class Administrator::ArticlesController < ApplicationController
    before_action :set_administrator_articles, only: [:show, :edit, :update, :destroy]

    def new
        @article = Article.new
    end
    
    
    
    def index
        if user_signed_in?
            @articles_user = User.find(current_user.id).get_articles
        else 
            redirect_to new_user_session_path
        end
    end

    def create
        @article = current_user.articles.build(articles_params)
        if @article.save
            redirect_to administrator_articles_path
        else
            render :new
        end
        
    end

    def create


    end


    private

    def set_administrator_articles
        @article = Article.find(params[:id])
    end


    def articles_params
        params.require(:article).permit(:title, :content)
    end

 

end
