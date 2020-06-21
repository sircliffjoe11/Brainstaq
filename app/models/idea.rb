class Idea < ApplicationRecord
    validates :title, :description, :category, :image, presence: true
    
    mount_uploader :image, ImageUploader
    
    belongs_to :user
    has_many :comments

    acts_as_votable

    is_impressionable

    def impressionist_count
      impressions.size
    end

    # extend FriendlyId
    # friendly_id :user_id, use: :slugged
end
