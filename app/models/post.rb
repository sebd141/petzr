class Post < ApplicationRecord
  belongs_to :user
  belongs_to :contract
  has_one_attached :photo
end
