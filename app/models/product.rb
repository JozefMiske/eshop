class Product < ApplicationRecord
    extend FriendlyId
    validates :title, :description, :price, presence: true
    validates :price, numericality: true
    has_one_attached :image do |attachable|
        attachable.variant :thumb, resize_to_limit: [600,600]        
    end
    has_rich_text :description
    friendly_id :title,use: %i[slugged]
    has_many :reviews
    def should_generate_new_friendly_id?
        title_changed? || slug.blank?
    end
end

