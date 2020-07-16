class Idea < ApplicationRecord 
  validates :title, :description, :overview, :impact, :donation_goal, :category, :image, presence: true
    
  mount_uploader :image, ImageUploader
    
  belongs_to :user
  has_many :comments

  has_many :perks, dependent: :destroy
  accepts_nested_attributes_for :perks, allow_destroy: true, reject_if: proc { |attr| attr['title'].blank? } 

  has_many_attached :images, dependent: :destroy

  # has_rich_text :description

  acts_as_votable

  is_impressionable

  scope :active, ->{ where(status: "active") }
  scope :inactive, ->{ where(status: "inactive") }

  def impressionist_count
    impressions.size
  end

  def donors
    # find users who donate to a specific campaign
  end

  def active?
    status == "active"
  end

  def inactive
    status == "inactive"
  end

  # def relevance_bar
  #   "#{idea.impressions.size + idea.get_likes.size + idea.comments.size}"
  # end

  # extend FriendlyId
  # friendly_id :user_id, use: :slugged
end
