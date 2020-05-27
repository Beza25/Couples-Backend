class AuthController < ApplicationController

 

    def login
        # find the user from User.all by the params user provided
        u = User.find_by(username: params[:username] )
        partner = User.find(u.partner_id)
        
        if !u
            render json: {error_message: "User not found. Try to login again."}
        else
            user = { "userObj" => u, "userTexts" => u.messages, 
                    "partner" => partner, "p_texts" => partner.messages ,
                    "special_days" => u.special_dates}
            render json: user 
          
        end
       
    end

   
end