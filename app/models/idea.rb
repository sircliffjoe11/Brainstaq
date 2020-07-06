class Idea < ApplicationRecord 
  validates :title, :description, :category, :image, presence: true
    
  mount_uploader :image, ImageUploader
    
  belongs_to :user
  has_many :comments
  has_one :campaign, inverse_of: :idea, dependent: :destroy

  accepts_nested_attributes_for :campaign, reject_if: :all_blank, allow_destroy: true 

  has_many_attached :images, dependent: :destroy

  # has_rich_text :description

  acts_as_votable

  is_impressionable

  def impressionist_count
    impressions.size
  end

  # def relevance_bar
  #   "#{idea.impressions.size + idea.get_likes.size + idea.comments.size}"
  # end

  # extend FriendlyId
  # friendly_id :user_id, use: :slugged
end
