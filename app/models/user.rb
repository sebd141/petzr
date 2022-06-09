class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews_recieved, class_name: 'Review', foreign_key: :recipient_id, primary_key: :id
  has_many :reviews_writer, class_name: 'Review', foreign_key: :writer_id, primary_key: :id

  has_many :contracts_pet_sitter, class_name: 'Contract', foreign_key: :id_pet_sitter, primary_key: :id
  has_many :contracts_user, class_name: 'Contract', foreign_key: :user_id, primary_key: :id
  has_many :posts
  has_many :pets
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # after_validation :sanitize_arrays

  def average_rating
    reviews = self.reviews_recieved
    unless reviews.empty?
      return reviews.map { |review| review[:rating] }.sum / reviews.size
    end
    return 0
  end

  # def sanitize_arrays
  #   self.type_of_pet.delete("")
  #   self.type_of_service.delete("")
  #   self.save
  # end
end
