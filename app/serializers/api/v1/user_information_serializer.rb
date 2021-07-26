class Api::V1::UserInformationSerializer < Api::V1::ApplicationSerializer
  attributes  :id,
              :user_id,
              :full_name,
              :last_name,
              :address
end