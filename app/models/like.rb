class Like < ApplicationRecord

  belongs_to :user
  belongs_to :photo

  validates :user_id, presence: true, uniqueness: {scope: :photo_id, message: "already liked this photo"}
  validates :photo_id, :presence => true

end
