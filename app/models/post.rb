class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    has_many :post_comment, -> { order "created_at DESC"}
end
