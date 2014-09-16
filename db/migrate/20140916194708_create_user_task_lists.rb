class CreateUserTaskLists < ActiveRecord::Migration
  def change
    create_table :user_task_lists do |t|
      t.integer :user_id, null: false
      t.integer :task_list_id, null: false

      t.timestamps
    end

    add_index :user_task_lists, [:user_id, :task_list_id], unique: true
  end
end
