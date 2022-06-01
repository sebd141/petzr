class Pet < ApplicationRecord
  belongs_to :user
  validates :breed, inclusion: ["cat", "dog"]
end
