class ApartmentSerializer
  include JSONAPI::Serializer
  attributes :number

  has_many :people
end
