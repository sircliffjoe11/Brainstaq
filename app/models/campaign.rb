class Campaign < ApplicationRecord
  validates :title, :donation_goal, :user_id, :idea_id, presence: true
  belongs_to :user
  belongs_to :idea
end
