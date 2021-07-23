class TenantHistory < ApplicationRecord
  belongs_to :property
  has_many :tenant_users, dependent: :destroy
end
