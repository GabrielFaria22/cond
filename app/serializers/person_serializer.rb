class PersonSerializer
  include JSONAPI::Serializer
  attributes :name, :age, :phone_number

  belongs_to :apartment
end
