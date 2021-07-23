class Permission < ApplicationRecord
  belongs_to :user_rol_permission
  has_many :user_rol_permissions, dependent: :destroy
end
