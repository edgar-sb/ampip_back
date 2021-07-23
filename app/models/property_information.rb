class PropertyInformation < ApplicationRecord
  belongs_to :property
  has_many :contacts, dependent: :destroy
  has_one :status_disponibility, dependent: :destroy
end
