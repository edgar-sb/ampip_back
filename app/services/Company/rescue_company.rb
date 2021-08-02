module Company
    class RescueCompany

    def initialize(user)
        @user = user
    end

    def call
        return rescue_id
    end

    private

    def rescue_id
        return Corporate.where(id:1)
    end

    end
end