class RemoveRationaleFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :rationale, :text
  end
end
