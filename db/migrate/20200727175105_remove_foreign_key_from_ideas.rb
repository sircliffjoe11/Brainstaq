class RemoveForeignKeyFromIdeas < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :campaigns, :ideas
  end
end
