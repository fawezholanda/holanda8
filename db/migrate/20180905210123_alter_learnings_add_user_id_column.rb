class AlterLearningsAddUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :learnings, :user_id, :integer
    add_index :learnings, :user_id
  end
end
