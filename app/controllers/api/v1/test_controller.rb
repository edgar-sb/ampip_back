class Api::V1::TestController < ApplicationController

    def index        
                
        info = userChanges
        render json: info, each_serializer: Api::V1::TenantUserSerializer

    end

    #provado y listo 
    def corporateX
        corps = Corporate.all
        return corps
    end

    #provado y listo
    def contactX 
        return Contact.all
    end

    #provado y listo
    def corporateInfoX
        return CorporateInformation.all
    end

    #provado y listo
    def mapsX
        return Map.all
    end

    #provado y listo
    def permissionX
        return Permission.all
    end

    #provado y listo
    def property
         return Property.all
    end

    #provado y listo
    def propertyInfoX
        return PropertyInformation.all
    end
    #probado y listo
    def propertyUserX
        return PropertyUser.all
    end
    #probado y listo
    def statusDisponibility
        return StatusDisponibility.all 
    end

    #probado y listo
    def tenantHistory
        return TenantHistory.all
    end
    
    #probado y listo
    def tenantUser
        return TenantUser.all
    end

    #probado y listo
    def userChanges
        rerun UserChange.all
    end
end