module Dashboard
    class MainDashboard
        def initialize(params)
            @params = params
        end
  
        def call
            return dashboard
        end

        private 
        def dashboard
            type = @params[:user_type]
            user_information = rescue_user_information(@params[:id])[0]
            if type == "admin_ampip"
                return {"developers":rescue_corporate(0, 1), "sponsors":rescue_corporate(0, 0), "user_information":user_information}
            elsif type == "user_ampip"
                return {"developers":rescue_corporate(0, 1), "sponsors":rescue_corporate(0, 0), "user_information":user_information}
            elsif type == "admin_society"
                return {"developers":rescue_corporate(user_information), "user_information":user_information}
            end
        end

        #rescata los o el desarrollador dependiendo de el requerimiento donde type  (0 => patrocinadores o 1 => desarrolladores)
        def rescue_corporate(id, type = nil)
            if id == 0
                return Corporate.where(corporate_type: type)
            else
                if id == "Sin datos"
                    return "Sin Desarrollador asignado"
                else 
                    return Corporate.where(id: id.corporate_id)
                end    
            end
        end
        #obtiene la informacion del usuario
        def rescue_user_information(id)
            @user = UserInformation.where(user_id:id)
            if @user != []
                return @user
            else
                return ["Sin datos"]
            end
        end      
    end 
end