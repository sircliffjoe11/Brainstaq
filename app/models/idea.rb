class Idea < ApplicationRecord 
  validates :title, :description, :category, :image, presence: true
    
  mount_uploader :image, ImageUploader
    
  belongs_to :user
  has_many :comments
  has_one :campaign

  # has_rich_text :description

  # has_one_attached :image
  # has_many_attached :images

  # def attach_other_images(signed_blob_id)
  #   blob = ActiveStorage::Blob.find_signed(signed_blob_id)
  #   return other_images.attach(signed_blob_id) unless blob.present?

  #   other_images.attach(blob.signed_id) unless other_images.attachments.map(&:blob_id).include?(blob.id)
  # end

  acts_as_votable

  is_impressionable

  def impressionist_count
    impressions.size
  end

  # extend FriendlyId
  # friendly_id :user_id, use: :slugged
end
