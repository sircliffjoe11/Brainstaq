class Donation < ApplicationRecord
  belongs_to :user, foreign_key: :donor_id, class_name: "User"
  belongs_to :idea
  belongs_to :perk, optional: true

  default_scope { order(created_at: :desc)}
end

