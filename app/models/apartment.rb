class Apartment < ApplicationRecord

  has_many :people, inverse_of: :apartment
end
