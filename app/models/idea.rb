class Idea < ApplicationRecord
    validates :title, :description, :image, presence: true
    mount_uploader :image, ImageUploader
    belongs_to :user
    has_many :comments

    # extend FriendlyId
    # friendly_id :user_id, use: :slugged
end
