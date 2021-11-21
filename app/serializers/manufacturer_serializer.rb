class ManufacturerSerializer < ActiveModel::Serializer
  attributes :name, :year_founded, :country_founded, :drinks
end