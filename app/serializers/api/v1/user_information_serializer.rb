class Api::V1::UserInformationSerializer < Api::V1::ApplicationSerializer
  attributes  :id,
              :user_id,
              :full_name,
              :last_name,
              :address
<<<<<<< HEAD
end
=======

  #def photo
  #   if object.photo.attached?
  #   {
  #     url: rails_blob_url(object.photo)
  #   }
  # end
end 
>>>>>>> b528a8c6e55ec4f9e1edb1cf71a93e265b463271
