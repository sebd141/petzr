class Contract < ApplicationRecord
  belongs_to :pet_sitter, class_name: 'User', foreign_key: 'id_pet_sitter', primary_key: :id, optional: false
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', primary_key: :id, optional: false
  has_many :posts
end
