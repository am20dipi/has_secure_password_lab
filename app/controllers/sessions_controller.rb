class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(name: params[:user][:name])
        if !params[:password] || params[:password].empty?
            redirect_to login_path
        else
            session[:user_id] = user.id
            redirect_to root_path
        end
    end

    def destroy 
        session.clear
        redirect_to root_path
    end

end
