class DrinkSerializer < ActiveModel::Serializer
  attributes :name, :drink_type, :concentration, :manufacturer
  def manufacturer
    {name: self.object.manufacturer.name,
    year_founded: self.object.manufacturer.year_founded,
    country_founded: self.object.manufacturer.country_founded}
  end

end

#  use in incog browser https://itnext.io/a-quickstart-guide-to-using-serializer-with-your-ruby-on-rails-api-d5052dea52c5 and https://www.youtube.com/watch?v=3S9fyfmCf1A&t=342s