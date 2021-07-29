class Api::V1::PropertySerializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :corporate_id,
                :type,
                :created_at,
                :updated_at
                 
end