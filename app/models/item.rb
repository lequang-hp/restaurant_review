class Item < ApplicationRecord
    has_one_attached :image
    belongs_to :re, :optional => true
end
