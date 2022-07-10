class Person < ApplicationRecord
  belongs_to :apartment, inverse_of: :people

  validates :name, presence: true
end
