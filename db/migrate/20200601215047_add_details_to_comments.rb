class AddDetailsToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :idea, index: true, foreign_key: true
  end
end
