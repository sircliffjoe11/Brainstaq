class RemoveIdeaIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :idea_id, :integer
  end
end
