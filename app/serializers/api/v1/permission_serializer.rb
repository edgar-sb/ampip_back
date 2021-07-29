class Api::V1::PermissionSerializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :user_rol_permission_id,
                :name,
                :created_at,
                :updated_at
end