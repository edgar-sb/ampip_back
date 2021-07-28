module Permissions
    class RescuePermission
        
        def initialize(user_id)
            @user_id = user_id             
        end
        

        def call 
            return rescue_user_role_permission(search_roll)
        end

        private

        def search_roll
            rols = UserRol.where(id: @user_id)
            if rols[0]
                return rols[0].id
            else
                return 0
            end  
        end
        
        def rescue_user_role_permission(id)
            permission = []
            userRolePermision = UserRolePermission.where(user_rol_id:id)
            for i in userRolePermision
                permissionWhitName = []
                permissionWhitName.append({"permiso": Permission.where(id: i.permission_id)[0].name, "read": i.read, "write": i.write})
                permission.append(permissionWhitName[0])     
            end
            return permission
        end

    end
end