class Api::V1::PropertyInformationSerializer < Api::V1::ApplicationSerializer
    attributes  :id,
                :Property_id,
                :name,
                :type,
                :superficie,
                :address,
                :english_name,
                :park_property,
                :region,
                :market,
                :industry,
                :suprficie_total,
                :superficie_urbanizada,
                :superficie_disponible,
                :inicio_de_operaciones,
                :number_employe,
                :practices_recognition,
                :infrastructure,
                :navy_number,
                :message,
                :postal_code,
                :colony,
                :municipality,
                :state,
                :status,
                :created_at,
                :updated_at
end