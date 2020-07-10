class AddColumnToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :overview, :string
    add_column :ideas, :challenges, :string
    add_column :ideas, :impact, :string
    add_column :ideas, :donation_goal, :decimal, default: 0
  end
end
