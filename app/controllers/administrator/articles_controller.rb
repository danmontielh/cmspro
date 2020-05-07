class Administrator::ArticlesController < ApplicationController

    def index
        if user_signed_in?
            @articles_user = User.find(current_user.id).get_articles
        else 
            redirect_to new_user_session_path
        end
    end
    

end
