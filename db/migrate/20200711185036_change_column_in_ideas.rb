class ChangeColumnInIdeas < ActiveRecord::Migration[6.0]
  def change
    change_column :ideas, :expires_at, :datetime, default: 40.days.from_now
  end
end
 