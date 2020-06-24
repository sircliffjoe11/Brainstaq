json.extract! campaign, :id, :title, :donation_goal, :user_id, :idea_id, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
