module UserInformations
    class CreateUserInfo

        def initialize(params)
            @params = params
        end

        def call
            return createUserData
        end
        
        private
        def createUserData
            newUserInformation = UserInformation.new @params
            debugger
            return @params
        end
    end
end