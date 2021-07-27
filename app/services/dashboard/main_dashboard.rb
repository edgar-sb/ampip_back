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
            if type == "admin_ampip"
                return {"developers":rescue_dev(0), "sponsors":rescue_sponsors(0), "user_information":rescue_user_information(@params[:id])}
            elsif type == "user_ampip"
                return {"developers":rescue_dev(0), "sponsors":rescue_sponsors(0), "user_information":rescue_user_information(@params[:id])}
            end
        end

        #rescata los o el patrocinador dependiendo de el requerimiento
        def rescue_sponsors(id)
            if id == 0
                return Corporate.where(corporate_type: 0)
            else
                return Corporate.where(id:id)
            end            
        end

        #rescata los o el desarrollador dependiendo de el requerimiento
        def rescue_dev(id)
            if id == 0
                return Corporate.where(corporate_type: 1)
            else
                return Corporate.where(id:id)
            end            
        end

        #obtiene la informacion del usuario
        def rescue_user_information(id)
            @user = UserInformation.where(user_id:id)
            if @user != []
                return @user
            else
                return "Sin datos aun"
            end
            
        end


        def rescue_tenants
            if 
                
            end
            
        end
      
    end 
end