class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      t.integer :total_comments, default: 0

      t.timestamps
    end
  end
end
