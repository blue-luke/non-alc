class DrinkSerializer < ActiveModel::Serializer
  attributes :name, :year_founded, :country_founded
end