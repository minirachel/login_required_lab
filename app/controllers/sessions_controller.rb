class SessionsController < ApplicationController

    def new
    end

    def create
        if !session.empty?
            redirect_to '/'
        else
            if params[:name] && !params[:name].empty?
                session[:name] = params[:name]
                redirect_to '/'
            else    
                redirect_to '/login'
            end
        end
    end

    def destroy
        if !session[:name].nil? 
            session.delete :name
        end
    end

end
