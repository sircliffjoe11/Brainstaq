class AddCategoryToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :category, :string
    add_column :ideas, :relevance_bar, :integer, default:0
  end
end
