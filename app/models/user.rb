class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader
        
  has_many :ideas, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :campaigns, dependent: :destroy

  acts_as_voter
  
  has_one_attached :image

  after_create :send_admin_mail
  def send_admin_mail
    UserMailer.send_welcome_email(self).deliver_later
  end
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def show
    @user = User.find(params[:id])
  end 

  def user_rating
    @total_likes = @user.get_likes.count
    @total_comments = @user.comments.size
    @total_views = @user.impressions.size
  end
  
  def total_following
    Follower.where(following_id: self.id).count
  end

  def total_followers
    Follower.where(follower_id: self.id).count
  end

  # def user_rating
  #   
  # end


end
