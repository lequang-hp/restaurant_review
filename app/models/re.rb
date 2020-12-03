class Re < ApplicationRecord
    has_one_attached :image
    has_many :posts, -> { order "created_at DESC"}
    has_many :items, dependent: :destroy
end
