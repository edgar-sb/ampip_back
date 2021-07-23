class Api::V1::PropertyUserSerializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :User_id,
                :industrial_park_id,
                :type_property,
                :created_at,
                :updated_at
                 
end 