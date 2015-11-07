class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :problem_id
      t.integer :importance_id
      t.integer :comment_id
      t.integer :platform_id
      t.boolean :status

      t.timestamps
    end
  end
end
