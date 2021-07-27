class Api::V1::PropertySerializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :Corporate_id,
                :property_catalog_id,
                :type,
                :created_at,
                :updated_at
                 
end