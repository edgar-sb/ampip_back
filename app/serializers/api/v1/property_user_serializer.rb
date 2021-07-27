class Api::V1::PropertyUserSerializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :user_id,
                :industrial_park_id,
                :type_property,
                :created_at,
                :updated_at
                 
end 