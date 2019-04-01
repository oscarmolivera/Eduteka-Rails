# Model class code
class Employee < ApplicationRecord
  belongs_to :company
  validates :name, presence: :true
end
