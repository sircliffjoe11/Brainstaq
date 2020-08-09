class User < ApplicationRecord
  attr_accessor :login 

  # "getter"

  # def login
  #   @login
  # end 

  # "setter"

  # def login=(str)
  #   @login = str
  # end


  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable 

  mount_uploader :image, ImageUploader
        
  has_many :ideas, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :conversations, foreign_key: :sender_id, dependent: :destroy

  # has_many :campaigns, dependent: :destroy

  acts_as_voter

  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
  has_many :followers, through: :following_users
  
  has_one_attached :image, dependent: :destroy

  #after_create :send_admin_mail
  # def send_admin_mail
  #   UserMailer.send_welcome_email(self).deliver_later
  # end
  
  def full_name
    "#{first_name} #{last_name}"
  end

  # def relevance_bar
  #   "#{@idea.impressions.size + @idea.get_likes.size + @idea.comments.size - 5}".to_i
  # end

  def show
    @user = User.find(params[:id])
  end 

  # def user_rating
  #   @total_likes = @user.get_likes.count
  #   @total_comments = @user.comments.size
  #   @total_views = @user.impressions.size
  # end
  
  def total_following
    Follow.where(followee_id: self.id).count
  end

  def total_followers
    Follow.where(follower_id: self.id).count
  end

  def self.find_for_database_authentication warden_condition
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(
      ["lower(username) = :value OR lower(email) = :value", 
        { value: login.strip.downcase}]).first
  end
end
