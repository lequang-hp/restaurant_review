class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :user
<<<<<<< HEAD
    has_many :post_comment, -> { order "created_at DESC"}
=======
    belongs_to :re, :optional => true
>>>>>>> 29e194a9cfbb32ad295759f3cdf2ed786b9d768d
end
