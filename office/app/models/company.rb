# Model class code
class Company < ApplicationRecord
  has_many :employee
  validates :name, presence: :true
end
