class Api::V1::Permission_Serializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :UserRolPermission_id,
                :name,
                :created_at,
                :updated_at
end