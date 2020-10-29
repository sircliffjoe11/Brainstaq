class Donation < ApplicationRecord
  belongs_to :donor, foreign_key: :donor_id, class_name: :User
  belongs_to :idea
  belongs_to :perk
end