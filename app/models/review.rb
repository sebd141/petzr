class Review < ApplicationRecord
  belongs_to :receiver, class_name: 'User', foreign_key: 'recipient_id', primary_key: :id, optional: false
  belongs_to :writer, class_name: 'User', foreign_key: 'writer_id', primary_key: :id, optional: false
end
