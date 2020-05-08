class ApplicationController < ActionController::Base
    before_action :menu
    
    private
    
    def menu
        @pages = Page.all.order("created_at DESC")
    end
end
