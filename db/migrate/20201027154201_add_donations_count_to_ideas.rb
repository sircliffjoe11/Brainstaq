class AddDonationsCountToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :donations_count, :integer, default: 0
  end
end
