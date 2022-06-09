class Contract < ApplicationRecord
  # validates :id_pet_sitter, allow_nil: true
  belongs_to :pet_sitter, class_name: 'User', foreign_key: 'id_pet_sitter', primary_key: :id, optional: true
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', primary_key: :id, optional: false
  has_many :posts, dependent: :destroy
  validates :start_date, presence: true
  validates :end_date, presence: true
end
