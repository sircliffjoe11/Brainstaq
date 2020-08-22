class DropCampaignsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :campaigns
  end
end
