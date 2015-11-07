class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :order_id
      t.integer :user_id
      t.integer :price
      t.float :time

      t.timestamps
    end
  end
end
