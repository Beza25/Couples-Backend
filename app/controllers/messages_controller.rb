class MessagesController < ApplicationController

    def index
        messages = Message.all
       
        render json: messages
    end

    def create
        t = Message.create(content: params[:content], user_id: params[:user_id])
        text = Message.find(t.id)
        # newText= {"textObj" => text, "texted_at" => text.created_at.strftime(" %I:%M%p") }
    
        render json: text.as_json(include: :user) 
    end


    def destroy
        text = Message.find(params[:id])
        text.destroy
    end

    def show 
        text = Message.find(params[:message_id])
        render json: text
    end




end
