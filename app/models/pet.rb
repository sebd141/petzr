class Pet < ApplicationRecord
  belongs_to :user
  validates :breed
end
