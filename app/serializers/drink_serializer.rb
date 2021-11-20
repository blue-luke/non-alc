class DrinkSerializer < ActiveModel::Serializer
  attributes :name, :drink_type, :concentration, :manufacturer
  def manufacturer
    {manufacturer_name: self.object.manufacturer.name,
    manufacturer_year_founded: self.object.manufacturer.year_founded
    manufacturer_country_founded: self.object.manufacturer.country_founded}
  end
  
end