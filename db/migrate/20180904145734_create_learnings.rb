class CreateLearnings < ActiveRecord::Migration[5.0]
  def change
    create_table :learnings do |t|
      t.string :Topic
      t.text :Question

      t.timestamps
    end
  end
end
