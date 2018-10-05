class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.string :rating
      t.integer :user_id
      t.integer :learning_id

      t.timestamps
    end

    add_index :comments, [:user_id, :learning_id]
    add_index :comments, :learning_id
  end
end
